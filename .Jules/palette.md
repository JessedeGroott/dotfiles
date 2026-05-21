## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-21 - Improved script skip message UX
**Learning:** The dotfiles script used a red "✖" error message when idempotently skipping files (e.g. because they were identical or newer). This false-negative error message caused unnecessary user anxiety, making it seem like the installation failed.
**Action:** Introduced a new `e_warning` (yellow "⚠️") function and updated the skip logic to show `e_success` (green "✔") for identical files and `e_warning` for other skip reasons, reducing false alarms and improving the perceived reliability of the script.
