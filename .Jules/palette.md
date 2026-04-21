## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Clarifying skipped actions in CLI output
**Learning:** Displaying skipped actions (like skipping a file copy because it's already identical) with an error icon (`✖`) caused false alarms. Users perceived an error when the script was actually acting idempotently and correctly.
**Action:** Implemented a new `e_warning` (`⚠️`) helper to distinguish non-fatal issues from real errors, and changed idempotent skips (e.g. "same file") to display as success (`✔`). Always ensure CLI logging accurately reflects the severity of the action to avoid user anxiety.
