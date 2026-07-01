#!/usr/bin/env python3
"""Generate statistics from the YAML status catalogue."""

from __future__ import annotations

import json
import sys
from pathlib import Path

from status_catalog import compute_statistics, load_components, load_notes, render_statistics_markdown, validate_components


def main(argv: list[str]) -> int:
    output_format = argv[1] if len(argv) > 1 else "json"
    repo_root = Path(__file__).resolve().parent.parent
    components = load_components(repo_root / "data" / "components.yaml")
    notes = load_notes(repo_root / "data" / "status-notes.yaml")
    validate_components(components, notes)
    stats = compute_statistics(components)

    if output_format == "json":
        json.dump(stats, sys.stdout)
        return 0
    if output_format == "md":
        markdown = render_statistics_markdown(stats)
        sys.stdout.write(markdown)
        if not markdown.endswith("\n"):
            sys.stdout.write("\n")
        return 0

    raise SystemExit(f"Unknown format {output_format!r}")


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
