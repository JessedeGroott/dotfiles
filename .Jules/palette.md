## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-25 - Improved skipped file feedback UX
**Learning:** Using an error icon (`✖`) for idempotent and benign skipped actions causes user distress by treating them as errors instead of normal setup steps.
**Action:** Implemented an `e_warning` (`⚠️`) logging helper for general skipped items and used `e_success` (`✔`) for "same file" skips in the dotfiles install process.
