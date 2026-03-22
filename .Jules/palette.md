## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-15 - Improve file skipping UX feedback
**Learning:** Marking an idempotent action (skipping a file because it is the "same file") as an error caused a false alarm in the UI.
**Action:** Updated the feedback logic in `do_stuff` to report `e_success` when a file is identically skipped, and created a new `e_warning` (⚠️) logger for other non-fatal skips, to better inform users without unnecessary visual distress.
