## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-09 - Reduced false alarm errors in script execution
**Learning:** Marking idempotent operations (like skipping a file because it is the "same file") with a red error icon (`✖`) creates unnecessary anxiety and a false sense of failure for users running setup scripts. Non-fatal skips (like "destination file newer") are also warnings, not errors.
**Action:** Used context-aware indicators (green `✔` for "same file", yellow `⚠️` for other skips) instead of a blanket error output to improve the psychological safety and clarity of the console output.
