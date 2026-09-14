## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-07-08 - Use semantic severity for skipped files
**Learning:** Using red error icons (✖) for non-fatal skips or already-correct states (idempotency) visually distresses users and creates false alarms during setup.
**Action:** Implemented semantic feedback severity: green (✔) for idempotent success ("same file"), yellow (⚠️) for non-fatal skips, and strictly reserving red (✖) for fatal operations blocking user intent.

## 2024-10-24 - Added visual hierarchy to CLI list outputs
**Learning:** Flat lists in terminal output (like the "no output from" list in `eachdir`) lack visual hierarchy and are difficult to scan.
**Action:** Added bullet points and indentation (`  - `) to list items to improve readability and clearly associate them with their section header.
