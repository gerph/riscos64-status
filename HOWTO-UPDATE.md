# How To Update Component Status

This repository has two distinct kinds of status data:

- `data/components.yaml` is the source of truth for the component catalogue and high-level status.
- `features/*.md` records per-feature/interface completeness using checkbox tables.

In practice, you usually update both:

1. update the component row in `data/components.yaml`
2. update the detailed feature page in `features/`
3. regenerate the derived wiki and statistics outputs

## 1. Update `data/components.yaml`

Each YAML list item represents one visible row in the generated status tables.

Fields you will commonly edit:

- `status_32`: current 32-bit porting state
- `status_64`: current 64-bit porting state
- `owner`: single primary owner, if known
- `source`: repository or upstream URL, if known; leave blank when nobody has taken it on
- `notes_32` / `notes_64`: note IDs from `data/status-notes.yaml`

Useful status values:

- `No work` is represented by a blank string: `''`
- `Investigate`
- `Stub`
- `Prototype`
- `Built`
- `Internals`
- `Functional`
- `Complete`
- `Tested`
- `Automated`
- `N/A`

Notes:

- `source` may be blank.
- `owner` may be blank.
- Blank lines between YAML items are fine and help readability.
- Keep existing `key` values stable.
- If the component has a known feature page name mismatch, preserve any `feature_page` override that already exists.

Example:

```yaml
- key: ROM modules:Debugger
  name: Debugger
  section: ROM modules
  kind: module
  lang: Asm
  status_32: Functional
  status_64: Functional
  notes_32:
  - debugger
  notes_64:
  - debugger
  owner: Gerph
  source: https://github.com/gerph/riscos-debugger-c
```

## 2. Decide What The High-Level Status Should Be

Use the YAML status fields for the overall component state, not for individual SWIs, commands, or services.

The high-level status should reflect the broad implementation position:

- use `Stub` when the component exists but is only skeletal
- use `Prototype` when it works enough to experiment with but is not yet solid
- use `Built` when it builds but has not been validated properly
- use `Functional` when the component works in ordinary use
- use `Complete` when the port is effectively done
- use `Tested` or `Automated` only when that is genuinely true at the component level

Repository-derived facts are added automatically:

- whether built artefacts exist in `rm32/`, `rm64/`, `aif32/`, `aif64/`
- whether the repository has a basic test path for the artefact
- whether the tests are explicitly disabled by `tests/<leaf>.disabled`

Do not encode those derived facts manually into the YAML.

## 3. Update `features/*.md`

The `features/Module_*.md` files are the source of truth for detailed completeness.

These pages use checkbox-style tables:

- `[ ]` not yet implemented
- `[>]` started/in progress
- `[X]` complete

When a feature becomes complete:

1. find the matching `features/Module_*.md` page
2. update the relevant checkbox rows from `[ ]` or `[>]` to `[X]`
3. only mark a row complete when the specific interface or behaviour is actually done

Typical sections to update:

- `Functionality`
- `Commands`
- `SWIs`
- `Services`
- `Vectors`
- `Events`
- `UpCalls`
- `Issues calls to`

Keep the feature-page prose intact; only change the detailed rows that are now complete.

## 4. Add Or Reuse Notes

If you need an explanatory footnote in the status table:

1. add a note entry to `data/status-notes.yaml`
2. reference it from the component with `notes_32`, `notes_64`, `notes_linux`, `notes_mac`, or `notes_windows`

Do not put footnote text directly into `Status.md`.

## 5. Regenerate Outputs

After editing the YAML or feature pages, rebuild the generated artefacts:

```sh
python3 -m unittest tests/test_status_pipeline.py
make statistics.json statistics.md wiki-pages
```

This regenerates:

- `statistics.json`
- `statistics.md`
- `wiki-update/Status.md`
- generated feature-page copies under `wiki-update/`
- planning/progress wiki pages

## 6. Check The Generated Results

Review these outputs after regeneration:

- `wiki-update/Status.md`
  - row appears in the right section
  - `Owner` and `Source` columns look correct
  - notes are rendered correctly
- `wiki-update/Module_*.md`
  - generated status summary reflects the YAML row
  - completeness percentages changed as expected

## 7. Quick Checklist

- updated `status_32` / `status_64` in `data/components.yaml`
- updated `owner` and `source` if known
- added or reused note IDs where needed
- updated `features/Module_*.md` checkbox rows for completed items
- ran `python3 -m unittest tests/test_status_pipeline.py`
- ran `make statistics.json statistics.md wiki-pages`
- checked `wiki-update/Status.md` and the generated feature page
