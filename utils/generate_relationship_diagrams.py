#!/usr/bin/env python3
"""Generate curated-style .relationships.mmd diagrams for full components that
already have a RELATIONSHIPS-HERE marker (added by apply_relationship_docs.py)
but no diagram yet.

This automates the same evidence-selection rules used for the hand-curated
pilot diagrams (features/Module_CLIV.relationships.mmd and others): an
architectural-relationship sentence for context, services.handles for
lifecycle, swi.provides/commands for the public interface, and the busiest
real consumers/targets found in the catalogue's relationships -- rather than
component-mermaid.py's alphabetical-first-N picks, which are not
representative for widely-used components. Components with too little
catalogue evidence to say anything useful are left with the placeholder
rather than given a near-empty diagram.

See AGENTS.md for the overall process.

Usage:
    python3 utils/generate_relationship_diagrams.py [--dry-run] [--report] [--force]
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from status_catalog import RELATIONSHIPS_MARKER, feature_page_map, load_components, relationship_diagram_path  # noqa: E402
from apply_relationship_docs import (  # noqa: E402
    CATALOGUE_JSON,
    COMPONENTS_YAML,
    FEATURE_DIR,
    build_indexes,
    find_match,
    is_partial,
    load_catalogue,
)

MAX_INBOUND = 3
MAX_OUTBOUND = 2
DETAIL_MAX_CHARS = 110

CLASSDEFS = (
    "  classDef terminal fill:#FFD700,stroke:#000000,stroke-width:2px;\n"
    "  classDef process fill:#CAFF70,stroke:#000000,stroke-width:2px;\n"
    "  classDef decision fill:#BFEFFF,stroke:#000000,stroke-width:2px;\n"
    "  classDef block fill:#FFBBFF,stroke:#9B30FF,stroke-width:2px;"
)


def sanitise(text: str) -> str:
    text = re.sub(r"\s+", " ", text).strip()
    text = text.replace('"', "&quot;")
    if len(text) > DETAIL_MAX_CHARS:
        truncated = text[:DETAIL_MAX_CHARS]
        last_space = truncated.rfind(" ")
        if last_space > DETAIL_MAX_CHARS // 2:
            truncated = truncated[:last_space]
        text = truncated.rstrip(",;: ") + "…"
    return text


def build_display_names(page_records: dict, by_path: dict, by_lname: dict) -> dict[str, str]:
    """Map a catalogue component id to the name used by its own feature page,
    where one exists, so a diagram that references e.g. "Switcher" as a
    consumer shows "TaskManager" -- the name its own page and title use --
    instead of the catalogue's internal build name."""
    display_names: dict[str, str] = {}
    for records in page_records.values():
        if is_partial(records):
            continue
        match = find_match(records, by_path, by_lname)
        if match:
            display_names[match["id"]] = records[0]["name"]
    return display_names


def clean_name(component: dict) -> str:
    """Some catalogue `name` fields are mangled multi-line CMHG titles (an
    extraction artefact); build.component_name is clean for those."""
    name = component.get("name", "")
    if "\n" in name or not re.match(r"^[A-Za-z0-9_ ./+()-]+$", name):
        alt = component.get("build", {}).get("component_name")
        if alt:
            return alt
        return name.split("\n", 1)[0].strip()
    return name


def node(node_id: str, text: str, style: str) -> str:
    shapes = {
        "process": '["{text}"]',
        "terminal": '(["{text}"])',
        "block": '[/"{text}"/]',
        "decision": '{{"{text}"}}',
    }
    return f'  {node_id}{shapes[style].format(text=sanitise(text))}:::{style}'


def swi_provides(component: dict) -> list[str]:
    return [item["name"] for item in component["interfaces"]["swi"].get("provides", []) if item.get("name")]


def command_names(component: dict) -> list[str]:
    names = []
    for item in component.get("commands", []):
        name = item.get("name", "")
        first_line = name.split("\n", 1)[0].strip()
        match = re.match(r"[A-Za-z_][A-Za-z0-9_]*", first_line)
        if match:
            names.append(match.group(0))
    return names


def is_library(component: dict) -> bool:
    """Library-kind components (OSLib, CLib, ...) are linked into almost every
    other component and their veneer/wrapper source issues the same SWI calls
    on behalf of whichever real caller linked them. That makes them appear as
    a near-universal "consumer" of everything they wrap, which isn't a real
    architectural relationship -- the actual caller is whoever links the
    library, which the catalogue doesn't record. Diagrams should show real
    consumers/targets only, never the library intermediary itself."""
    return "library" in component.get("kind", [])


def architecture_context(component: dict) -> str | None:
    for relationship in component.get("relationships", []):
        if relationship.get("kind") == "architectural relationship" and relationship.get("detail"):
            return relationship["detail"]
    return None


def outbound_targets(component: dict, by_id: dict) -> list[tuple[str, list[str]]]:
    """This component's own outbound SWI calls, grouped by named target
    component, most distinct interfaces first."""
    grouped: dict[str, set[str]] = {}
    for relationship in component.get("relationships", []):
        if relationship.get("kind") != "invokes SWI":
            continue
        target_id = relationship.get("target_component")
        interface = relationship.get("target_interface")
        if not target_id or target_id == component["id"] or target_id not in by_id:
            continue
        if is_library(by_id[target_id][0]):
            continue
        grouped.setdefault(target_id, set()).add(interface or "")
    ranked = sorted(grouped.items(), key=lambda kv: (-len(kv[1]), kv[0]))
    return [(target_id, sorted(interfaces)) for target_id, interfaces in ranked[:MAX_OUTBOUND]]


def inbound_consumers(focus_id: str, catalogue: list[dict]) -> list[tuple[str, list[str]]]:
    """Other components with a direct "invokes SWI" relationship naming this
    component, grouped by consumer, most distinct interfaces first."""
    grouped: dict[str, set[str]] = {}
    for other in catalogue:
        if other["id"] == focus_id or is_library(other):
            continue
        interfaces: set[str] = set()
        for relationship in other.get("relationships", []):
            if relationship.get("kind") == "invokes SWI" and relationship.get("target_component") == focus_id:
                interfaces.add(relationship.get("target_interface") or "")
        if interfaces:
            grouped[other["id"]] = interfaces
    ranked = sorted(grouped.items(), key=lambda kv: (-len(kv[1]), kv[0]))
    return [(consumer_id, sorted(interfaces)) for consumer_id, interfaces in ranked[:MAX_INBOUND]]


def display_name(component_id: str, component: dict, display_names: dict[str, str]) -> str:
    return display_names.get(component_id, clean_name(component))


def build_diagram(component: dict, by_id: dict, catalogue: list[dict], display_names: dict[str, str]) -> str | None:
    focus_id = component["id"]
    focus_name = display_name(focus_id, component, display_names)

    context_text = architecture_context(component)
    lifecycle_names = [item["name"] for item in component["interfaces"]["services"].get("handles", []) if item.get("name")]
    provides = swi_provides(component)
    commands = command_names(component)
    inbound = inbound_consumers(focus_id, catalogue)
    outbound = outbound_targets(component, by_id)

    api_label = None
    if provides:
        api_label = ", ".join(provides[:4])
    elif commands:
        api_label = "*" + ", *".join(commands[:3])
    elif inbound:
        prefix = component["interfaces"]["swi"].get("prefix") or focus_name
        api_label = f"{prefix}_* interface"

    extra_node_count = (
        (1 if context_text else 0)
        + (1 if lifecycle_names else 0)
        + len(inbound)
        + len(outbound)
    )
    if extra_node_count < 2:
        return None

    lines = [
        f"%% Generated from riscos-component-interfaces.json by generate_relationship_diagrams.py; component id: {focus_id}.",
        "flowchart LR",
    ]

    if context_text:
        lines.append(node("context", context_text, "block"))
        lines.append('  context -->|"architecture"| focus')
    if lifecycle_names:
        lines.append(node("lifecycle", " / ".join(lifecycle_names[:3]), "block"))
        lines.append('  lifecycle -->|"lifecycle change"| focus')

    lines.append(node("focus", focus_name, "process"))

    if api_label:
        lines.append(node("api", api_label, "terminal"))
        lines.append('  focus -->|"provides"| api')

    for index, (consumer_id, interfaces) in enumerate(inbound, start=1):
        consumer_name = display_name(consumer_id, by_id[consumer_id][0], display_names)
        example = interfaces[0] if interfaces and interfaces[0] else "invokes SWI"
        node_id = f"consumer{index}"
        lines.append(node(node_id, consumer_name, "terminal"))
        target = "api" if api_label else "focus"
        label = f"invokes {example}" if example != "invokes SWI" else example
        lines.append(f'  {node_id} -->|"{sanitise(label)}"| {target}')

    for index, (target_id, interfaces) in enumerate(outbound, start=1):
        target_name = display_name(target_id, by_id[target_id][0], display_names)
        example = interfaces[0] if interfaces and interfaces[0] else "invokes SWI"
        node_id = f"target{index}"
        lines.append(node(node_id, target_name, "terminal"))
        lines.append(f'  focus -->|"{sanitise(example)}"| {node_id}')

    lines.append(CLASSDEFS)
    return "\n".join(lines) + "\n"


def process(dry_run: bool, report: bool, force: bool) -> None:
    components = load_components(COMPONENTS_YAML)
    catalogue = load_catalogue()
    by_path, by_lname = build_indexes(catalogue)
    by_id: dict[str, list[dict]] = {}
    for c in catalogue:
        by_id.setdefault(c["id"], []).append(c)
    page_records = feature_page_map(components, FEATURE_DIR)
    display_names = build_display_names(page_records, by_path, by_lname)

    generated = 0
    skipped_no_marker = 0
    skipped_exists = 0
    skipped_no_match = 0
    skipped_partial = 0
    skipped_sparse: list[str] = []

    for page, records in sorted(page_records.items()):
        if is_partial(records):
            skipped_partial += 1
            continue
        path = FEATURE_DIR / page
        text = path.read_text(encoding="utf-8")
        if RELATIONSHIPS_MARKER not in text:
            skipped_no_marker += 1
            continue

        diagram_path = relationship_diagram_path(path)
        if diagram_path.exists() and not force:
            skipped_exists += 1
            continue

        match = find_match(records, by_path, by_lname)
        if match is None:
            skipped_no_match += 1
            continue

        diagram = build_diagram(match, by_id, catalogue, display_names)
        if diagram is None:
            skipped_sparse.append(records[0]["name"])
            continue

        generated += 1
        if not dry_run:
            diagram_path.write_text(diagram, encoding="utf-8")

    if report:
        print("Diagrams generated:      ", generated)
        print("Already had a diagram:   ", skipped_exists)
        print("No RELATIONSHIPS marker: ", skipped_no_marker)
        print("Partial pages:           ", skipped_partial)
        print("No confident JSON match: ", skipped_no_match)
        print("Too little evidence:     ", len(skipped_sparse))
        if skipped_sparse:
            print("\nComponents left as placeholder (too little evidence):")
            for name in sorted(skipped_sparse):
                print(" ", name)


def main(argv: list[str]) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true", help="Do not write files, just report")
    parser.add_argument("--report", action="store_true", help="Print a summary of what would/did change")
    parser.add_argument("--force", action="store_true", help="Regenerate even if a .relationships.mmd already exists")
    args = parser.parse_args(argv[1:])
    process(dry_run=args.dry_run, report=args.report or args.dry_run, force=args.force)
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
