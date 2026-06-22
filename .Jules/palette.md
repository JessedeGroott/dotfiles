## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-22 - Use semantic severity for CLI output skips
**Learning:** The setup wizard previously used an error icon (`✖`) for non-fatal skips, including idempotent "same file" conditions, causing unnecessary user anxiety.
**Action:** Introduced an `e_warning` (yellow `⚠️`) for non-fatal skips and converted idempotent "same file" skips to `e_success` (green `✔`) to properly reflect system state without false errors.
