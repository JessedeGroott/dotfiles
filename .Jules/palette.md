## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Improved skip message UX
**Learning:** Treating idempotent skips (e.g., "same file") as errors creates visual distress and false alarms for users during setup scripts.
**Action:** Distinguished between success-skips and warning-skips to provide clearer, less alarming feedback. Added `e_warning` for non-fatal issues and used `e_success` for already-completed operations.
