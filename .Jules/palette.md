## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Clarified terminal output for skipped files
**Learning:** Using an error icon (`✖`) for benign or expected actions, such as skipping a file copy because it's already identical to the destination ("same file"), causes false alarms and anxiety for users during setup scripts.
**Action:** Implemented a new `e_warning` (yellow `⚠️`) output helper for general, non-fatal skips. Modified the copy/link logic to explicitly use `e_success` (green `✔`) when skipping due to idempotency (same file), making the script feel much safer and more reliable.
