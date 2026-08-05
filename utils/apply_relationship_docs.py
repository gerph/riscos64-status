#!/usr/bin/env python3
"""Normalise ## Summary sections and add ## Relationships markers to features/Module_*.md
and features/Lib_*.md pages, using data/riscos-component-interfaces.json as the source of
component descriptions and evidence.

See AGENTS.md at the repository root for the full process this script is part of.

Usage:
    python3 utils/apply_relationship_docs.py [--dry-run] [--report]
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

import yaml

sys.path.insert(0, str(Path(__file__).resolve().parent))
from status_catalog import feature_page_map, load_components  # noqa: E402


REPO_ROOT = Path(__file__).resolve().parent.parent
FEATURE_DIR = REPO_ROOT / "features"
COMPONENTS_YAML = REPO_ROOT / "data" / "components.yaml"
CATALOGUE_JSON = REPO_ROOT / "data" / "riscos-component-interfaces.json"

RELATIONSHIPS_MARKER = "RELATIONSHIPS-HERE"

# Manual aliases from a data/components.yaml full-component `name` to its
# data/riscos-component-interfaces.json `submodule.path`, for components whose
# catalogue `name` does not case-insensitively match the yaml name (renamed
# module, truncated 10-character build name, or a mangled multi-line CMHG
# title). Verified by hand against the catalogue; each path resolves to
# exactly one catalogue component. Components with no confident single match
# are deliberately left out and only get Summary normalisation, not a
# Relationships section.
MANUAL_ALIASES = {
    "WindowManager": "Sources/Desktop/Wimp",
    "ColourTrans": "Sources/Video/Render/Colours",
    "TaskManager": "Sources/Desktop/Switcher",
    "MessageTrans": "Sources/Internat/MsgTrans",
    "BufferManager": "Sources/HWSupport/Buffers",
    "SystemDevices": "Sources/HWSupport/SystemDevs",
    "SerialDeviceDriver": "Sources/HWSupport/Serial",
    "SerialDeviceSupport": "Sources/HWSupport/SerialSpt",
    "WindowUtils": "Sources/Desktop/WimpUtils",
    "ErrorLog": "Sources/Utilities/RecErrors",
    "UnSqueezeAIF": "Sources/HWSupport/UnSqzAIF",
    "FontManager": "Sources/Video/Render/Fonts/Manager",
    "SharedCLibrary": "Sources/Lib/CLibs/SCL",
    "DMAManager": "Sources/HWSupport/DMA",
    "SysLog": "Sources/Programmer/SysLog",
    "SoundChannels": "Sources/HWSupport/Sound/Sound1",
    "SoundScheduler": "Sources/HWSupport/Sound/Sound2",
    "ParallelDeviceDriver": "Sources/HWSupport/Parallel",
    "Draw": "Sources/Video/Render/Draw",
    "ZLib": "Sources/Programmer/ZLib",
    "SuperSample": "Sources/Video/Render/Super",
    "ConvertGIF": "Sources/Video/Render/ConvertGIF",
    "PDriver": "Sources/Printing2/Engine/PDriver",
    "DisplayManager": "Sources/Video/UserI/Display",
    "DragASprite": "Sources/Desktop/DragASprit",
    "DragAnObject": "Sources/Desktop/DragAnObj",
    "Filer_Action": "Sources/Desktop/FilerAct",
    "MbufManager": "Sources/Lib/TCPIPLibs/mbufmanager",
    "MimeMap": "Sources/Networking/AUN/MimeMap",
    "SpriteUtils": "Sources/Video/Render/SpriteUtil",
    "OwnerBanner": "Sources/OS_Core/OwnerBanner",
}


def load_catalogue() -> list[dict]:
    return json.loads(CATALOGUE_JSON.read_text(encoding="utf-8"))["components"]


def build_indexes(catalogue: list[dict]):
    by_path = {}
    by_lname = {}
    for component in catalogue:
        by_path.setdefault(component["submodule"]["path"], []).append(component)
        by_lname.setdefault(component["name"].casefold(), []).append(component)
    return by_path, by_lname


def has_reliable_description(component: dict) -> bool:
    """Some catalogue descriptions are 'medium'/'low' confidence guesses drawn
    from a single function's doc comment (basis "source prologue") or from
    build metadata alone; those read as plausible prose but are often about
    the wrong thing (e.g. one SWI's prologue, not the module). Only trust a
    description for an unattended Summary section when it is either
    high-confidence, or medium-confidence and drawn from genuine module-level
    metadata (a CMHG header)."""
    description = component.get("description", {})
    confidence = description.get("confidence")
    basis = description.get("basis", "")
    if confidence == "high":
        return True
    if confidence == "medium" and "CMHG" in basis:
        return True
    return False


def find_match(records: list[dict], by_path: dict, by_lname: dict) -> dict | None:
    """Return the single confident catalogue component for a group of yaml
    records sharing a feature page, or None if there is no unambiguous match."""
    for record in records:
        alias_path = MANUAL_ALIASES.get(record["name"])
        if alias_path:
            candidates = by_path.get(alias_path)
            if candidates and len(candidates) == 1:
                return candidates[0]
    for record in records:
        candidates = by_lname.get(record["name"].casefold())
        if candidates and len(candidates) == 1:
            return candidates[0]
    return None


def is_partial(records: list[dict]) -> bool:
    """A page is 'partial' (documents only part of a wider component) when its
    components.yaml name uses the section:part convention, e.g. Wimp:Introspection."""
    return all(":" in record.get("name", "") for record in records)


FRONT_MATTER_BOUNDARY = re.compile(
    r"^(?:---\s*$|## (?!Summary\b|Documentation\b).*$)",
    re.MULTILINE,
)
SUMMARY_HEADING = re.compile(r"^## Summary[ \t]*$", re.MULTILINE)
SUMMARY_SYNONYM_HEADING = re.compile(r"^## (?:Overview|Description|Purpose)[ \t]*$", re.MULTILINE)
TITLE_LINE = re.compile(r"^# .*$", re.MULTILINE)
ANY_HEADING_OR_DIVIDER = re.compile(r"^(?:## .*$|---\s*$)", re.MULTILINE)
RELATIONSHIPS_HEADING = re.compile(r"^## Relationships\s*$", re.MULTILINE)


def insert_summary(text: str, description: str | None) -> tuple[str, bool]:
    """Ensure a ## Summary heading exists. Returns (new_text, changed)."""
    if SUMMARY_HEADING.search(text):
        return text, False

    synonym_match = SUMMARY_SYNONYM_HEADING.search(text)
    if synonym_match:
        # An existing lead-in heading (e.g. "## Overview") is already doing the
        # job of a Summary section; rename it rather than adding a second one.
        return text[: synonym_match.start()] + "## Summary" + text[synonym_match.end():], True

    title_match = TITLE_LINE.search(text)
    if not title_match:
        return text, False

    after_title = text[title_match.end():]
    next_heading = ANY_HEADING_OR_DIVIDER.search(after_title)
    lead_in = after_title[: next_heading.start()] if next_heading else after_title
    lead_in_stripped = lead_in.strip("\n")

    if lead_in_stripped.strip():
        # Existing prose with no heading: give it one.
        new_lead_in = "\n\n## Summary\n\n" + lead_in_stripped + "\n\n"
        new_text = text[: title_match.end()] + new_lead_in + after_title[len(lead_in):]
        return new_text, True

    if description:
        new_block = "\n\n## Summary\n\n" + description.strip() + "\n"
        new_text = text[: title_match.end()] + new_block + after_title
        return new_text, True

    return text, False


def insert_relationships(text: str) -> tuple[str, bool]:
    """Ensure a ## Relationships section with the RELATIONSHIPS-HERE marker
    exists, placed after Documentation (or after Summary if there is no
    Documentation), i.e. before the front-matter/body boundary."""
    if RELATIONSHIPS_HEADING.search(text):
        return text, False

    boundary = FRONT_MATTER_BOUNDARY.search(text)
    block = "\n## Relationships\n\n" + RELATIONSHIPS_MARKER + "\n\n"
    if boundary:
        insert_at = boundary.start()
        new_text = text[:insert_at] + block + text[insert_at:]
    else:
        new_text = text.rstrip("\n") + "\n\n" + block
    return new_text, True


def process(dry_run: bool, report: bool) -> None:
    components = load_components(COMPONENTS_YAML)
    catalogue = load_catalogue()
    by_path, by_lname = build_indexes(catalogue)
    page_records = feature_page_map(components, FEATURE_DIR)

    stats = {
        "pages": 0,
        "summary_from_prose": 0,
        "summary_from_json": 0,
        "summary_heading_renamed": 0,
        "summary_unavailable": 0,
        "relationships_added": 0,
        "relationships_skipped_partial": 0,
        "relationships_skipped_no_match": 0,
        "unchanged": 0,
    }
    no_match_names: list[str] = []

    for page, records in sorted(page_records.items()):
        path = FEATURE_DIR / page
        text = path.read_text(encoding="utf-8")
        original = text
        stats["pages"] += 1

        match = find_match(records, by_path, by_lname)
        description = None
        if match and has_reliable_description(match):
            description = match["description"]["text"]

        before = text
        text, summary_changed = insert_summary(text, description)
        if summary_changed:
            # Determine which source was used for reporting purposes.
            if SUMMARY_SYNONYM_HEADING.search(before):
                stats["summary_heading_renamed"] += 1
            else:
                title_match = TITLE_LINE.search(before)
                after_title = before[title_match.end():] if title_match else ""
                next_heading = ANY_HEADING_OR_DIVIDER.search(after_title)
                lead_in = (after_title[: next_heading.start()] if next_heading else after_title).strip()
                if lead_in:
                    stats["summary_from_prose"] += 1
                else:
                    stats["summary_from_json"] += 1
        elif not SUMMARY_HEADING.search(text) and not description:
            stats["summary_unavailable"] += 1
            no_match_names.append(records[0]["name"])

        partial = is_partial(records)
        if partial:
            stats["relationships_skipped_partial"] += 1
        elif match is None:
            stats["relationships_skipped_no_match"] += 1
            if records[0]["name"] not in no_match_names:
                no_match_names.append(records[0]["name"])
        else:
            text, rel_changed = insert_relationships(text)
            if rel_changed:
                stats["relationships_added"] += 1

        if text != original:
            if not dry_run:
                path.write_text(text, encoding="utf-8")
        else:
            stats["unchanged"] += 1

    if report:
        print("Pages considered:            ", stats["pages"])
        print("Summary added from prose:    ", stats["summary_from_prose"])
        print("Summary added from JSON:     ", stats["summary_from_json"])
        print("Summary heading renamed:     ", stats["summary_heading_renamed"])
        print("Summary unavailable:         ", stats["summary_unavailable"])
        print("Relationships added:         ", stats["relationships_added"])
        print("Relationships skip (partial):", stats["relationships_skipped_partial"])
        print("Relationships skip (no match):", stats["relationships_skipped_no_match"])
        print("Pages left unchanged:        ", stats["unchanged"])
        if no_match_names:
            print("\nComponents with no confident JSON match or no summary source:")
            for name in sorted(set(no_match_names)):
                print(" ", name)


def main(argv: list[str]) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true", help="Do not write files, just report")
    parser.add_argument("--report", action="store_true", help="Print a summary of what changed")
    args = parser.parse_args(argv[1:])
    process(dry_run=args.dry_run, report=args.report or args.dry_run)
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
