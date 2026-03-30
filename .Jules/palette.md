## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiating idempotency from errors
**Learning:** Using an error state (red `✖`) for idempotent operations like "same file" when copying/linking configuration files caused unnecessary alarm, making a smooth installation feel like it had failed.
**Action:** Replaced the error message with a success state (green `✔`) for identical files and introduced a neutral warning state (yellow `⚠️`) for other non-fatal skips, creating a clearer, more reassuring user experience.
