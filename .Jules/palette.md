## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate skip reasons in do_stuff
**Learning:** The previous implementation of `do_stuff` used `e_error` for any skipped file, even if it was skipped because it was identical (`same file`), which caused false alarms and user confusion as the operation was actually successful.
**Action:** Replaced `e_error` with conditional logic in `do_stuff`: use `e_success` when the skip reason is `same file` (indicating successful idempotent state) and a new `e_warning` for other skip reasons. Added the missing `e_warning` output function to support this.
