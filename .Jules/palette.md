## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Clarified terminal output severity
**Learning:** Using an error state (red `✖`) for all skipped operations caused false alarms, especially when the script intentionally skipped an operation because it was already completed (idempotency, e.g., "same file").
**Action:** Differentiated skip feedback states: successful idempotent skips ("same file") now use a success indicator (green `✔`), and other non-fatal skips (e.g., "destination file newer") use a warning indicator (yellow `⚠️`). Kept errors exclusively for actual failures.
