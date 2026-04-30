## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - Improve CLI feedback for idempotent actions
**Learning:** Using error styling for successful idempotent operations creates false alarms and degrades user trust in actual error messages.
**Action:** Use green success checks or neutral indicators for valid idempotent operations (e.g. "same file"), reserving red errors for actual failures, and yellow warnings for non-fatal issues.
