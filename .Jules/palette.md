## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiated log levels for file operations
**Learning:** Using an error log level (`e_error`) for expected, idempotent operations like skipping an already-identical file ("same file") creates false alarms and visual distress for the user.
**Action:** Implemented a new `e_warning` helper (⚠️) for non-fatal skips, and reclassified "same file" skips to use `e_success` (✔) to correctly communicate an idempotent success.
