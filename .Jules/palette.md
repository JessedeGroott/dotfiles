## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - Improved skip feedback for idempotency
**Learning:** Using an error indicator (red ✖) for non-fatal or idempotent file skips (e.g., when a file is exactly the same and skipping is expected behavior) creates false alarms and a distressed user experience.
**Action:** Replaced the generic error log with a success indicator (green ✔) for idempotent "same file" skips and a warning indicator (yellow ⚠️) for other non-fatal skips, preserving error logs for actual failures.
