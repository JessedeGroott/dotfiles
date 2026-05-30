## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-30 - Replace false errors with warning/success logging
**Learning:** Using error cues (red ✖) for non-fatal or expected idempotent skips causes user alarm and degrades trust in the terminal setup wizard.
**Action:** Implemented a new warning helper (yellow ⚠️) and updated the skip logic to return success (green ✔) for idempotent skips and warnings for other non-fatal skips.
