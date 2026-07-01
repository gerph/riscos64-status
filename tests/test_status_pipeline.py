#!/usr/bin/env python3
"""Regression tests for the YAML-backed status pipeline."""

from __future__ import annotations

from contextlib import redirect_stderr, redirect_stdout
from io import StringIO
from pathlib import Path
import sys
import tempfile
import unittest

REPO_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO_ROOT / "utils"))

import linkmodulefeatures  # type: ignore  # noqa: E402
import makestats  # type: ignore  # noqa: E402
from status_catalog import (  # type: ignore  # noqa: E402
    compute_statistics,
    derive_repository_facts,
    feature_page_map,
    load_components,
    load_notes,
    validate_components,
)


class StatusPipelineTests(unittest.TestCase):
    def setUp(self) -> None:
        self.components = load_components(REPO_ROOT / "data" / "components.yaml")
        self.notes = load_notes(REPO_ROOT / "data" / "status-notes.yaml")
        validate_components(self.components, self.notes)

    def test_statistics_shape_stays_compatible(self) -> None:
        stats = compute_statistics(self.components)
        self.assertIn("32bit", stats)
        self.assertIn("64bit", stats)
        self.assertIn("states", stats)
        self.assertIn("sections", stats)
        self.assertEqual(stats["64bit"]["ROM modules"]["components"]["TerritoryManager"], "Functional")

    def test_repository_facts_cover_built_and_disabled_cases(self) -> None:
        facts = derive_repository_facts(self.components, REPO_ROOT)
        by_name = {component["name"]: facts[component["key"]] for component in self.components}

        self.assertTrue(by_name["TerritoryManager"].test_state == "untested")
        self.assertTrue(by_name["BootCommands"].built_32)
        self.assertTrue(by_name["BootCommands"].built_64)
        self.assertEqual(by_name["BootCommands"].test_state, "tested")
        self.assertEqual(by_name["Debugger"].test_state, "tested")
        self.assertEqual(by_name["FileTypes"].test_state, "tested")
        self.assertEqual(by_name["MimeMap"].test_state, "disabled")
        self.assertFalse(by_name["MimeMap"].tested_in_repo)

    def test_blank_source_is_valid(self) -> None:
        component = next(c for c in self.components if c["name"] == "Kernel:SystemInit")
        self.assertEqual(component.get("source", ""), "")

    def test_status_render_contains_expected_sections_and_notes(self) -> None:
        with tempfile.TemporaryDirectory() as tempdir:
            status_output = Path(tempdir) / "Status.md"
            modules_dir = Path(tempdir) / "wiki-update"
            stderr = StringIO()
            with redirect_stderr(stderr):
                rc = linkmodulefeatures.main(
                    [
                        "linkmodulefeatures.py",
                        str(REPO_ROOT / "Status.md"),
                        str(status_output),
                        str(modules_dir),
                    ]
                )
            self.assertEqual(rc, 0)
            content = status_output.read_text(encoding="utf-8")
            self.assertIn("### ROM modules", content)
            self.assertIn("## Libraries", content)
            self.assertIn("### Primary toolchain", content)
            self.assertIn("status-note-territory", content)
            self.assertIn("| Name | Lang | C-state | 64-state | Owner | Source |", content)
            self.assertIn("| [Debugger](Module_Debugger) | Asm | Functional", content)
            self.assertIn("| Gerph | [GitHub](https://github.com/gerph/riscos-debugger-c) |", content)

    def test_feature_headers_are_generated_for_single_mismatch_and_duplicate_pages(self) -> None:
        with tempfile.TemporaryDirectory() as tempdir:
            status_output = Path(tempdir) / "Status.md"
            modules_dir = Path(tempdir) / "wiki-update"
            stderr = StringIO()
            with redirect_stderr(stderr):
                linkmodulefeatures.main(
                    [
                        "linkmodulefeatures.py",
                        str(REPO_ROOT / "Status.md"),
                        str(status_output),
                        str(modules_dir),
                    ]
                )

            territory = (modules_dir / "Module_TerritoryManager.md").read_text(encoding="utf-8")
            self.assertIn("## Status summary", territory)
            self.assertIn("| TerritoryManager | ROM modules |", territory)

            library_help = (modules_dir / "Module_LibraryHelp.md").read_text(encoding="utf-8")
            self.assertIn("| LibraryHelp | ROM modules |", library_help)
            self.assertIn("| LibraryHelp | Boot utilities |", library_help)
            self.assertIn("32-bit built, 64-bit built", library_help)

    def test_feature_map_resolves_known_mismatches(self) -> None:
        mapping = feature_page_map(self.components, REPO_ROOT / "features")
        self.assertIn("Module_LibraryHelp.md", mapping)
        self.assertIn("Module_TimerManager.md", mapping)
        self.assertIn("Module_BootCommands.md", mapping)

    def test_processor_warns_for_missing_owner_when_status_set(self) -> None:
        stdout = StringIO()
        stderr = StringIO()
        with redirect_stdout(stdout), redirect_stderr(stderr):
            rc = makestats.main(["makestats.py", "json"])

        self.assertEqual(rc, 0)
        warnings = stderr.getvalue()
        self.assertIn("Warning: no owner for TerritoryManager", warnings)
        self.assertNotIn("Warning: no owner for Kernel:SystemInit", warnings)
        self.assertNotIn("Warning: no owner for gcc (GCC)", warnings)


if __name__ == "__main__":
    unittest.main()
