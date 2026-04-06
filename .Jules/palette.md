## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Reduce false alarms in file skip logs
**Learning:** The dotfiles setup script used an error icon (`✖`) to report all skipped files, even when the reason was a non-fatal, successful idempotent operation (like "same file"). This caused users distress because it falsely appeared as an installation failure.
**Action:** Replaced the error logging with `e_success` (`✔`) for identical file skips and `e_warning` (`⚠️`) for other benign skips, removing false alarms while keeping the logs accurate.
