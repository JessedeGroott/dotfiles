## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-04-18 - Improve file skipping UX feedback
**Learning:** The installer script was throwing aggressive red error icons (`✖`) when it skipped files due to them already existing or being up-to-date. This "false alarm" UX can make users think something went wrong when the system is actually behaving correctly in an idempotent manner.
**Action:** Introduced a new warning icon (`⚠`) for generic skips, and used the existing success icon (`✔`) when skipping because the file is identical (`same file`), thereby reassuring users that the operation was successful.
