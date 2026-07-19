#!/usr/bin/env python3
"""Render wiki pages using the YAML status catalogue."""

from __future__ import annotations

from collections import OrderedDict
from pathlib import Path
import re
import sys

from status_catalog import (
    BADGE_PLACEHOLDER,
    FEATURE_HEADER_BEGIN,
    FEATURE_HEADER_END,
    GROUP_TRANSITIONS,
    SECTION_SCHEMAS,
    component_display_name,
    derive_repository_facts,
    display_value,
    feature_page_map,
    format_source,
    load_components,
    load_notes,
    note_ids_for_field,
    note_reference,
    owner_warnings,
    resolve_feature_page,
    validate_components,
)


def render_status_tables(
    components: list[dict],
    notes: OrderedDict[str, str],
    feature_dir: Path,
) -> str:
    feature_pages = feature_page_map(components, feature_dir)
    note_numbers = OrderedDict((note_id, index) for index, note_id in enumerate(notes, start=1))
    lines: list[str] = []
    sections = OrderedDict()
    for component in components:
        sections.setdefault(component["section"], []).append(component)

    for section, section_components in sections.items():
        transition = GROUP_TRANSITIONS.get(section)
        if transition:
            if lines and lines[-1] != "":
                lines.append("")
            lines.extend(transition.rstrip("\n").splitlines())
            lines.append("")

        lines.append(f"### {section}")
        lines.append("")

        columns = SECTION_SCHEMAS[section]
        header = "| " + " | ".join(columns) + " |"
        divider = "|" + "|".join("-" * (len(column) + 2) for column in columns) + "|"
        lines.append(header)
        lines.append(divider)
        section_notes: list[str] = []
        section_used_notes: set[str] = set()

        for component in section_components:
            page = resolve_feature_page(component, feature_dir)
            linked_name = component["name"]
            if page:
                linked_name = f"[{component['name']}]({page[:-3]})"

            values = []
            for column in columns:
                if column == "Name":
                    cell = component_display_name(component, linked_name)
                elif column == "Tool":
                    cell = component.get("tool", "")
                elif column == "Filetype":
                    cell = component.get("filetype", "")
                elif column == "Lang":
                    cell = component.get("lang", "")
                elif column == "C-state":
                    cell = display_value(component.get("status_32", ""))
                    for note_id in note_ids_for_field(component, "notes_32"):
                        if note_id not in section_used_notes:
                            section_used_notes.add(note_id)
                            section_notes.append(
                                f"<sup><a name=\"status-note-{note_id}\"></a>note {note_numbers[note_id]}</sup>: {notes[note_id]}"
                            )
                        cell += note_reference(note_id, note_numbers)
                elif column == "64-state":
                    cell = display_value(component.get("status_64", ""))
                    for note_id in note_ids_for_field(component, "notes_64"):
                        if note_id not in section_used_notes:
                            section_used_notes.add(note_id)
                            section_notes.append(
                                f"<sup><a name=\"status-note-{note_id}\"></a>note {note_numbers[note_id]}</sup>: {notes[note_id]}"
                            )
                        cell += note_reference(note_id, note_numbers)
                elif column == "Linux":
                    cell = display_value(component.get("linux", ""))
                    for note_id in note_ids_for_field(component, "notes_linux"):
                        if note_id not in section_used_notes:
                            section_used_notes.add(note_id)
                            section_notes.append(
                                f"<sup><a name=\"status-note-{note_id}\"></a>note {note_numbers[note_id]}</sup>: {notes[note_id]}"
                            )
                        cell += note_reference(note_id, note_numbers)
                elif column == "Mac":
                    cell = display_value(component.get("mac", ""))
                    for note_id in note_ids_for_field(component, "notes_mac"):
                        if note_id not in section_used_notes:
                            section_used_notes.add(note_id)
                            section_notes.append(
                                f"<sup><a name=\"status-note-{note_id}\"></a>note {note_numbers[note_id]}</sup>: {notes[note_id]}"
                            )
                        cell += note_reference(note_id, note_numbers)
                elif column == "Windows":
                    cell = display_value(component.get("windows", ""))
                    for note_id in note_ids_for_field(component, "notes_windows"):
                        if note_id not in section_used_notes:
                            section_used_notes.add(note_id)
                            section_notes.append(
                                f"<sup><a name=\"status-note-{note_id}\"></a>note {note_numbers[note_id]}</sup>: {notes[note_id]}"
                            )
                        cell += note_reference(note_id, note_numbers)
                elif column == "Claimant":
                    cell = component.get("owner", "")
                elif column == "Source":
                    cell = format_source(component.get("source", ""))
                else:
                    cell = ""
                values.append(cell)
            lines.append("| " + " | ".join(values) + " |")

        if section_notes:
            lines.append("")
            for note in section_notes:
                lines.append(note)
                lines.append("")
        lines.append("")

    return "\n".join(lines).rstrip() + "\n"


def format_repo_summary(fact) -> str:
    built = []
    if fact.built_32:
        built.append("32-bit built")
    if fact.built_64:
        built.append("64-bit built")
    if not built:
        built.append("not built in repo")
    test_summary = {
        "tested": "tested in repo",
        "disabled": "tests disabled in repo",
        "untested": "not tested in repo",
    }[fact.test_state]
    return ", ".join(built + [test_summary])


def build_feature_header(records: list[dict], repo_facts) -> str:
    lines = [
        FEATURE_HEADER_BEGIN,
        "",
        "## Status summary",
        "",
        "| Component | Section | 32-bit | 64-bit | Claimant | Source | Repo summary |",
        "|-----------|---------|--------|--------|-------|--------|--------------|",
    ]
    for record in records:
        fact = repo_facts[record["key"]]
        lines.append(
            "| {component} | {section} | {status_32} | {status_64} | {owner} | {source} | {summary} |".format(
                component=record["name"],
                section=record["section"],
                status_32=display_value(record.get("status_32", "")),
                status_64=display_value(record.get("status_64", "")),
                owner=record.get("owner", ""),
                source=format_source(record["source"]),
                summary=format_repo_summary(fact),
            )
        )
    lines.extend(["", FEATURE_HEADER_END, ""])
    return "\n".join(lines)


def replace_or_insert_header(text: str, header: str) -> str:
    pattern = re.compile(
        rf"{re.escape(FEATURE_HEADER_BEGIN)}.*?{re.escape(FEATURE_HEADER_END)}\n?",
        re.S,
    )
    if pattern.search(text):
        return pattern.sub(header, text)

    lines = text.splitlines(keepends=True)
    if lines:
        insert_at = 1
        while insert_at < len(lines) and lines[insert_at].strip() == "":
            insert_at += 1
        lines.insert(insert_at, header)
        return "".join(lines)
    return header


def copy_feature_page(
    source: Path,
    destination: Path,
    records: list[dict],
    repo_facts,
) -> None:
    text = source.read_text(encoding="utf-8")
    header = build_feature_header(records, repo_facts)
    text = replace_or_insert_header(text, header)

    mmd_path = source.with_suffix(".mmd")
    if mmd_path.exists():
        dev_block = "\n## Development status\n\n```mermaid\n"
        dev_block += mmd_path.read_text(encoding="utf-8")
        if not dev_block.endswith("\n"):
            dev_block += "\n"
        dev_block += "```\n\n"
        dev_block += f"{BADGE_PLACEHOLDER}\n"

        if FEATURE_HEADER_END in text:
            text = text.replace(FEATURE_HEADER_END + "\n", FEATURE_HEADER_END + "\n" + dev_block, 1)
        else:
            lines = text.splitlines(keepends=True)
            insert_at = 1 if lines else 0
            lines.insert(insert_at, dev_block)
            text = "".join(lines)

    accum: list[str] = []
    section = None
    prefix = ""
    counts = []
    incomplete = inprogress = complete = 0

    def flush_section() -> None:
        nonlocal incomplete, inprogress, complete, section
        if section and incomplete + inprogress + complete:
            counts.append((section, incomplete, complete, inprogress))
        incomplete = inprogress = complete = 0

    for raw_line in text.splitlines(keepends=True):
        line = raw_line
        heading_match = re.match(r"^# Module: (.*)$", line.rstrip("\n"))
        if heading_match:
            pass
        if line.startswith("## Issues calls to"):
            prefix = "Uses "
        section_match = re.match(r"^### (.*)$", line.rstrip("\n"))
        if section_match:
            flush_section()
            section = prefix + section_match.group(1)

        incomplete += len(re.findall(r" \[ \] ", line))
        complete += len(re.findall(r" \[X\] ", line))
        complete += len(re.findall(r" \[x\] ", line))
        inprogress += len(re.findall(r" \[>\] ", line))

        line = line.replace(" [ ] ", " :black_square_button: ")
        line = line.replace(" [X] ", " :white_check_mark: ")
        line = line.replace(" [x] ", " :white_check_mark: ")
        line = line.replace(" [>] ", " :arrow_forward: ")
        accum.append(line)

    flush_section()

    table_head = []
    table_values = []
    total_complete = 0
    total_items = 0
    for title, inc, comp, prog in counts:
        out_of = inc + comp + prog
        pct = 100.0 * comp / out_of
        table_head.append(title)
        table_values.append(f"{pct:6.2f}%")
        total_complete += comp
        total_items += out_of
    if total_items:
        table_head.append("TOTAL")
        table_values.append(f"{100.0 * total_complete / total_items:6.2f}%")

    completeness = "\n\n### Completeness\n\n"
    completeness += "|" + "".join(f" {value} |" for value in table_head) + "\n"
    completeness += "|" + "".join(" --- |" for _ in table_head) + "\n"
    completeness += "|" + "".join(f" {value} |" for value in table_values) + "\n\n"

    text = "".join(accum).replace(BADGE_PLACEHOLDER, completeness)
    destination.write_text(text, encoding="utf-8")


def _link_name_cell(cell: str, feature_page: str) -> str:
    trimmed = cell.strip()
    if trimmed.startswith("[") and "](" in trimmed:
        return cell
    replacement = f"[{trimmed}]({feature_page[:-3]})"
    return cell.replace(trimmed, replacement, 1)


def link_table_names(text: str, components_by_name: dict[str, list[dict]], feature_dir: Path) -> tuple[str, set[str]]:
    lines = text.splitlines()
    output: list[str] = []
    copied: set[str] = set()
    in_table = False
    headings = []
    name_index = None

    for line in lines:
        if not in_table:
            if line.startswith("|"):
                in_table = True
                headings = [part.strip() for part in line.strip("|").split("|")]
                name_index = headings.index("Name") if "Name" in headings else None
            output.append(line)
            continue

        if not line.strip():
            in_table = False
            output.append(line)
            continue
        if line.startswith("|-"):
            output.append(line)
            continue
        if not line.startswith("|") or name_index is None:
            output.append(line)
            continue

        cells = line.strip("|").split("|")
        if name_index >= len(cells):
            output.append(line)
            continue
        raw_name = re.sub(r"\[\^[^\]]+\]", "", cells[name_index]).strip()
        records = components_by_name.get(raw_name)
        if not records:
            output.append(line)
            continue
        page = resolve_feature_page(records[0], feature_dir)
        if not page:
            output.append(line)
            continue
        copied.add(page)
        cells[name_index] = _link_name_cell(cells[name_index], page)
        output.append("|" + "|".join(cells) + "|")
    return "\n".join(output) + "\n", copied


def render_status_template(
    template: str,
    tables: str,
) -> str:
    output = template.replace("<!-- STATUS_TABLES -->", tables.rstrip())
    output = output.replace("<!-- STATUS_NOTES -->", "")
    if not output.endswith("\n"):
        output += "\n"
    return output


def main(argv: list[str]) -> int:
    if len(argv) < 2:
        raise SystemExit(f"Syntax: {argv[0]} <input> [<output>] [<dir>]")

    input_path = Path(argv[1]).resolve()
    output_path = Path(argv[2]).resolve() if len(argv) > 2 else input_path
    module_dir = Path(argv[3]).resolve() if len(argv) > 3 else output_path.parent
    module_dir.mkdir(parents=True, exist_ok=True)

    repo_root = Path(__file__).resolve().parent.parent
    feature_dir = repo_root / "features"
    components = load_components(repo_root / "data" / "components.yaml")
    notes = load_notes(repo_root / "data" / "status-notes.yaml")
    validate_components(components, notes)
    for warning in owner_warnings(components):
        print(warning, file=sys.stderr)
    repo_facts = derive_repository_facts(components, repo_root)
    page_records = feature_page_map(components, feature_dir)

    template = input_path.read_text(encoding="utf-8")
    output_text = template

    copied_pages: set[str] = set()
    if "<!-- STATUS_TABLES -->" in template:
        tables = render_status_tables(components, notes, feature_dir)
        output_text = render_status_template(template, tables)
        copied_pages.update(page_records.keys())
    else:
        name_map: dict[str, list[dict]] = {}
        for record in components:
            name_map.setdefault(record["name"], []).append(record)
        output_text, copied_pages = link_table_names(template, name_map, feature_dir)

    output_path.write_text(output_text, encoding="utf-8")

    for page in sorted(copied_pages):
        copy_feature_page(feature_dir / page, module_dir / page, page_records[page], repo_facts)

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
