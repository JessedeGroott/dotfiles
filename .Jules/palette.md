## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Reduced anxiety around identical file skips
**Learning:** In the dotfiles installation wizard (`do_stuff`), skipping identical files was logged with an error icon (✖) and red text (`e_error`). While technically a "skip", an identical file is a successful idempotent operation. Users perceived these identical file skips as installation failures, causing unnecessary alarm.
**Action:** Created a new `e_warning` logging helper (⚠️) for non-fatal skips, and updated the skip logic to log identical files (`same file`) with a success indicator (✔, `e_success`) and other skip reasons with the new warning indicator (`e_warning`). This clarifies that the installation is proceeding nominally.
