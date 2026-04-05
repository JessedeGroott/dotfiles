## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Context-aware file skipping indicators
**Learning:** The previous implementation used an error icon (`✖`) for expected file skipping behaviors (like skipping unchanged files), which caused unnecessary user alarm during the dotfiles setup.
**Action:** Implemented a new `e_warning` helper (`⚠️`) and updated the skipping logic to use context-aware feedback: `e_success` (`✔`) for identical files and `e_warning` for other non-fatal skips, preserving `e_error` for actual failures.
