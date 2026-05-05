## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-05 - Differentiate file skip reasons
**Learning:** Using a red error icon (`✖`) for non-fatal file skips or successful idempotent operations (e.g., "same file") creates false alarms and a negative user experience.
**Action:** Replaced blanket error formatting with `e_success` (green `✔`) for identical files and `e_warning` (yellow `⚠️`) for other non-fatal skips, improving semantic accuracy and reducing user anxiety during setup.
