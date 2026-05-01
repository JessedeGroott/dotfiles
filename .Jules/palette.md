## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiated skip warnings in file processing
**Learning:** The file processing logic previously used a red error message (`✖`) for all skipped files, even when the skip was due to an idempotent "success" (e.g., identical file already exists). This caused false alarms and anxiety for users during setup.
**Action:** Introduced an `e_warning` (yellow `⚠️`) helper for non-fatal issues. Differentiated skip reasons: identical files now show as `e_success` (green `✔`), and other non-fatal skips (like destination newer) use `e_warning`, reserving `e_error` for actual failures.
