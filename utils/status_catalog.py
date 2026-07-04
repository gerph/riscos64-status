#!/usr/bin/env python3
"""Shared helpers for the YAML-backed status pipeline."""

from __future__ import annotations

from collections import OrderedDict, defaultdict
from dataclasses import dataclass
from pathlib import Path
import re
from typing import Dict, Iterable, List, Optional, Sequence, Set, Tuple
from urllib.parse import urlparse

import yaml


VALID_STATES = {
    "",
    "-",
    "N/A",
    "No work",
    "Investigate",
    "Stub",
    "Prototype",
    "Built",
    "Internals",
    "Functional",
    "Complete",
    "Tested",
    "Automated",
}

STATE_SEQUENCE = [
    "No work",
    "Investigate",
    "Stub",
    "Prototype",
    "Built",
    "Internals",
    "Functional",
    "Complete",
    "Tested",
    "Automated",
    "Total",
]

SECTION_SCHEMAS = OrderedDict(
    [
        ("ROM modules", ("Name", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("New ROM modules", ("Name", "C-state", "64-state", "Owner", "Source")),
        ("System modules", ("Name", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("Additional modules", ("Name", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("ROM resources", ("Name", "Filetype", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("Library files", ("Name", "Filetype", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("Boot utilities", ("Name", "Filetype", "Lang", "C-state", "64-state", "Owner", "Source")),
        ("Libraries", ("Name", "Lang", "C-state", "64-state", "Owner", "Source")),
        (
            "Primary toolchain",
            ("Tool", "Name", "Lang", "C-state", "64-state", "Linux", "Mac", "Windows", "Owner", "Source"),
        ),
        (
            "Additional tools",
            ("Tool", "Name", "Lang", "C-state", "64-state", "Linux", "Mac", "Windows", "Owner", "Source"),
        ),
    ]
)

GROUP_TRANSITIONS = OrderedDict(
    [
        ("ROM modules", ""),
        (
            "Libraries",
            "## Libraries\n\n"
            "Libraries have a slightly different lifecycle, as they don't produce a tool or module "
            "themselves which is usable, but are used by others. As such, the `Built` state indicates "
            "that the library has been exported and is available for use, but that it has not been "
            "validated that it works properly.\n",
        ),
        (
            "Primary toolchain",
            "## Tools\n\n"
            "The tools for developing 64-bit components need to be created.\n"
            "The table below shows information about various tools and their support:\n\n"
            "* `Tool`: Describes the intent of the tool.\n"
            "* `Name`: The particular variant of the tool described.\n"
            "* `Lang`: The implementation language, if relevant.\n"
            "* `C-state`: The status of the RISC OS implementation for 32-bit.\n"
            "* `64-state`: The status of the RISC OS implementation for 64-bit.\n"
            "* `Linux`: The status of a Linux version of the tool.\n"
            "* `Mac`: The status of the Mac version of the tool.\n"
            "* `Windows`: The status of the Windows version of the tool.\n",
        ),
    ]
)

FEATURE_HEADER_BEGIN = "<!-- GENERATED STATUS HEADER BEGIN -->"
FEATURE_HEADER_END = "<!-- GENERATED STATUS HEADER END -->"
BADGE_PLACEHOLDER = "<!-- badges -->"

MANUAL_ARTIFACT_ALIASES = {
    "BootCommands": ["BootCmds"],
    "FileCoreCheck": ["FileCoreCk"],
    "LibraryHelp": ["LibraryHlp"],
    "RateTracker": ["RateTrack"],
    "SpriteUtils": ["SpriteUtil"],
    "TimerManager": ["Timer"],
    "UtilityModule": ["UtilityModuleC"],
}


@dataclass
class RepositoryFacts:
    built_32: bool
    built_64: bool
    tested_in_repo: bool
    test_state: str
    matched_artifacts: List[str]


def _read_yaml(path: Path):
    with path.open("r", encoding="utf-8") as handle:
        return yaml.safe_load(handle)


def load_components(path: Path) -> List[dict]:
    data = _read_yaml(path)
    if not isinstance(data, list):
        raise ValueError(f"{path} did not contain a list of components")
    return data


def load_notes(path: Path) -> OrderedDict[str, str]:
    data = _read_yaml(path)
    if not isinstance(data, dict):
        raise ValueError(f"{path} did not contain a note mapping")
    notes: OrderedDict[str, str] = OrderedDict()
    for key, value in data.items():
        if not isinstance(value, str):
            raise ValueError(f"Note {key!r} did not contain a string value")
        notes[str(key)] = value
    return notes


def canonical_name(text: str) -> str:
    return re.sub(r"[^a-z0-9]+", "", text.lower())


def component_kind(component: dict) -> str:
    if component.get("kind"):
        return component["kind"]
    section = component["section"]
    filetype = component.get("filetype")
    if section in {"ROM modules", "New ROM modules", "System modules", "Additional modules"}:
        return "module"
    if section == "Libraries":
        return "library"
    if section in {"Primary toolchain", "Additional tools"}:
        return "tool"
    if filetype:
        return filetype.lower().replace(" ", "_")
    return "component"


def is_script(component: dict) -> bool:
    return component.get("lang") == "Script"


def is_c_like(component: dict) -> bool:
    lang = component.get("lang", "")
    return lang == "C" or "/C" in lang or "C/" in lang


def validate_components(components: Sequence[dict], notes: Dict[str, str]) -> None:
    seen: Set[str] = set()
    for component in components:
        key = component.get("key")
        if not key:
            raise ValueError(f"Component without key: {component}")
        if key in seen:
            raise ValueError(f"Duplicate component key: {key}")
        seen.add(key)

        for field in ("section", "status_32", "status_64"):
            if field not in component:
                raise ValueError(f"Component {key} missing {field}")

        if component["section"] not in SECTION_SCHEMAS:
            raise ValueError(f"Component {key} used unknown section {component['section']!r}")

        source = component.get("source", "")
        if source not in {"", "Private", "Unknown"}:
            parsed = urlparse(source)
            if parsed.scheme not in {"http", "https"} or not parsed.netloc:
                raise ValueError(f"Component {key} has invalid source {source!r}")

        for field in ("status_32", "status_64"):
            if field in component and component[field] not in VALID_STATES:
                raise ValueError(
                    f"Component {key} has invalid {field} value {component[field]!r}"
                )

        for field in (
            "notes",
            "notes_32",
            "notes_64",
            "notes_linux",
            "notes_mac",
            "notes_windows",
        ):
            for note_id in component.get(field, []):
                if note_id not in notes:
                    raise ValueError(f"Component {key} referenced unknown note {note_id!r}")


def owner_warnings(components: Sequence[dict]) -> List[str]:
    warnings: List[str] = []
    for component in components:
        owner = str(component.get("owner", "")).strip()
        if owner:
            continue

        for field in ("status_32", "status_64"):
            value = component.get(field, "")
            if value not in {"", "-", "N/A"}:
                warnings.append(f"Warning: no owner for {component['name']}")
                break
    return warnings


def _normalise_32_state(component: dict) -> Optional[str]:
    raw = component.get("status_32", "")
    if raw == "N/A":
        return None
    if raw == "-":
        return "Complete" if is_c_like(component) else "Complete"
    if raw == "":
        return "Complete" if is_c_like(component) else "No work"
    return raw


def _normalise_64_state(component: dict) -> Optional[str]:
    raw = component.get("status_64", "")
    if raw == "N/A":
        return None
    if raw in {"", "-"}:
        return "No work"
    return raw


def statistics_components(components: Sequence[dict]) -> List[dict]:
    return [component for component in components if not is_script(component)]


def compute_statistics(components: Sequence[dict]) -> dict:
    totals = {"32bit": OrderedDict(), "64bit": OrderedDict(), "states": STATE_SEQUENCE, "sections": []}
    sections_seen: List[str] = []

    for component in statistics_components(components):
        section = component["section"]
        if section not in totals["32bit"]:
            sections_seen.append(section)
            totals["sections"].append(section)
            counts32 = OrderedDict((state, [0, []]) for state in STATE_SEQUENCE)
            counts64 = OrderedDict((state, [0, []]) for state in STATE_SEQUENCE)
            totals["32bit"][section] = {"states": counts32, "components": OrderedDict()}
            totals["64bit"][section] = {"states": counts64, "components": OrderedDict()}

        name = component["name"]
        state32 = _normalise_32_state(component)
        state64 = _normalise_64_state(component)

        if state32 is not None:
            totals["32bit"][section]["states"]["Total"][0] += 1
            totals["32bit"][section]["states"]["Total"][1].append(name)
            totals["32bit"][section]["states"][state32][0] += 1
            totals["32bit"][section]["states"][state32][1].append(name)
            totals["32bit"][section]["components"][name] = state32

        if state64 is not None:
            totals["64bit"][section]["states"]["Total"][0] += 1
            totals["64bit"][section]["states"]["Total"][1].append(name)
            totals["64bit"][section]["states"][state64][0] += 1
            totals["64bit"][section]["states"][state64][1].append(name)
            totals["64bit"][section]["components"][name] = state64

    return totals


def render_statistics_markdown(stats: dict) -> str:
    lines: List[str] = []
    for section in stats["sections"]:
        sec32 = stats["32bit"][section]["states"]
        sec64 = stats["64bit"][section]["states"]
        if sec32["Total"][0] == 0 and sec64["Total"][0] == 0:
            continue
        lines.append(f"## {section}")
        lines.append("")
        lines.append("| Name | " + " | ".join(STATE_SEQUENCE) + " |")
        lines.append("|----|" + "|".join("---:" for _ in STATE_SEQUENCE) + "|")
        for row_name, row in (("32bit", sec32), ("64bit", sec64)):
            values = []
            for state in STATE_SEQUENCE:
                count = row[state][0]
                values.append(str(count) if count else "")
            lines.append("| " + row_name + " | " + " | ".join(values) + " |")
        lines.append("")
    return "\n".join(lines)


def feature_page_candidates(record: dict, override: Optional[str] = None) -> List[str]:
    if override:
        return [override]

    name = record["name"]
    base = name.replace(":", "_")
    prefix = "Lib" if record.get("section") == "Libraries" else "Module"
    candidates = [f"{prefix}_{base}.md"]
    if prefix == "Module" and base.startswith("Wimp_"):
        candidates.append(f"Module_{base.replace('Wimp_', 'WindowManager_', 1)}.md")
    return candidates


def resolve_feature_page(record: dict, feature_dir: Path) -> Optional[str]:
    for candidate in feature_page_candidates(record, record.get("feature_page")):
        if (feature_dir / candidate).exists():
            return candidate
    return None


def feature_page_map(components: Sequence[dict], feature_dir: Path) -> Dict[str, List[dict]]:
    mapping: Dict[str, List[dict]] = defaultdict(list)
    for component in components:
        page = resolve_feature_page(component, feature_dir)
        if page:
            mapping[page].append(component)
    return mapping


def _scan_artifact_sets(repo_root: Path) -> Dict[str, Set[str]]:
    result: Dict[str, Set[str]] = {"32": set(), "64": set()}
    for bitness, directory in (("32", "rm32"), ("64", "rm64"), ("32", "aif32"), ("64", "aif64")):
        for path in (repo_root / directory).glob("*,*"):
            result[bitness].add(path.name.split(",")[0])
    return result


def _scan_test_metadata(repo_root: Path) -> Tuple[Dict[str, Set[str]], Dict[str, bool], Dict[str, Set[str]]]:
    active: Dict[str, Set[str]] = defaultdict(set)
    disabled: Dict[str, bool] = defaultdict(bool)
    aliases: Dict[str, Set[str]] = defaultdict(set)
    for path in (repo_root / "tests").glob("*.*"):
        name = path.name
        if "," not in name:
            continue
        base, suffix = name.split(",", 1)
        ext = suffix.split(".")[-1]
        if ext == "name":
            aliases[path.read_text(encoding="utf-8").strip()].add(base)
        elif ext == "disabled":
            disabled[base] = True
        else:
            active[base].add(ext)
    return active, disabled, aliases


def artifact_candidates(component: dict) -> List[str]:
    name = component["name"]
    candidates = [name]
    if name in MANUAL_ARTIFACT_ALIASES:
        candidates.extend(MANUAL_ARTIFACT_ALIASES[name])
    if ":" in name:
        head, tail = name.split(":", 1)
        candidates.extend(
            [
                name.replace(":", ""),
                name.replace(":", "_"),
                f"{head}{tail}",
            ]
        )
        if head == "Wimp":
            candidates.append(f"Wimp{tail}")
        if head == "Kernel":
            candidates.append(f"Kernel{tail}")
    return candidates


def derive_repository_facts(components: Sequence[dict], repo_root: Path) -> Dict[str, RepositoryFacts]:
    artifacts = _scan_artifact_sets(repo_root)
    active_tests, disabled_tests, aliases = _scan_test_metadata(repo_root)

    canonical_artifacts = defaultdict(set)
    for bitness in ("32", "64"):
        for artifact in artifacts[bitness]:
            canonical_artifacts[canonical_name(artifact)].add(artifact)
    for base in set(active_tests) | set(disabled_tests):
        canonical_artifacts[canonical_name(base)].add(base)

    facts: Dict[str, RepositoryFacts] = {}
    for component in components:
        names: Set[str] = set(artifact_candidates(component))
        names.update(aliases.get(component["name"], set()))

        matched: Set[str] = set()
        for candidate in names:
            if not candidate:
                continue
            matched.add(candidate)
            matched.update(canonical_artifacts.get(canonical_name(candidate), set()))

        built_32 = any(candidate in artifacts["32"] for candidate in matched)
        built_64 = any(candidate in artifacts["64"] for candidate in matched)
        has_disabled = any(disabled_tests.get(candidate, False) for candidate in matched)
        has_active = any(active_tests.get(candidate) for candidate in matched)
        has_implicit_basic_test = built_32 or built_64
        if has_disabled:
            test_state = "disabled"
            tested = False
        elif has_active or has_implicit_basic_test:
            test_state = "tested"
            tested = True
        else:
            test_state = "untested"
            tested = False

        facts[component["key"]] = RepositoryFacts(
            built_32=built_32,
            built_64=built_64,
            tested_in_repo=tested,
            test_state=test_state,
            matched_artifacts=sorted(matched),
        )
    return facts


def format_source(source: str) -> str:
    if source in {"", "Unknown"}:
        return ""
    if source == "Private":
        return "Private"

    parsed = urlparse(source)
    host = parsed.netloc.lower()
    if host == "github.com":
        label = "GitHub"
    elif host.endswith("riscosopen.org"):
        label = "RISC OS Open"
    elif host.endswith("riscos.com"):
        label = "RISCOS Ltd"
    elif host.endswith("iconbar.com"):
        label = "Iconbar"
    else:
        label = host.removeprefix("www.") or "Link"

    return f"[{label}]({source})"


def display_value(value: str) -> str:
    if value == "No work":
        return ""
    return value


def note_ids_for_field(component: dict, field_name: str) -> List[str]:
    return list(component.get(field_name, []))


def note_reference(note_id: str, note_numbers: Dict[str, int]) -> str:
    return f"<sup>[note {note_numbers[note_id]}](#status-note-{note_id})</sup>"


def component_display_name(component: dict, linked_name: Optional[str] = None) -> str:
    if linked_name is not None:
        return linked_name
    return component["name"]
