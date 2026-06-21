## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-21 - Improved file skip feedback semantic severity
**Learning:** In the setup script, non-fatal skips (like encountering an identical file or destination being newer) were reported using `e_error` (red ✖), which alarmed users. Idempotent operations should be visually recognized as successes, and other non-fatal skips as warnings.
**Action:** Changed the file skipping logic in `do_stuff` to report 'same file' skips using `e_success` (green ✔) and other non-fatal skips using `e_warning` (yellow ⚠️). Added the `e_warning` helper to the standard logging utilities.
