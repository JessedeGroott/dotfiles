## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-10 - Distinguish file skipping reasons in setup
**Learning:** Using error messages (red ✖) for safe, idempotent operations (like skipping a file because it's identical) causes false alarms and distress for users running the setup script.
**Action:** Added an `e_warning` (yellow ⚠️) helper for non-fatal skips (e.g. newer file exists) and used `e_success` (green ✔) for identical file skips to clearly communicate the script's success state.
