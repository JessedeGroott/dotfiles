## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-25 - Avoid false alarm errors in idempotent operations
**Learning:** Highlighting skipped files as errors (✖) when they were merely unchanged ("same file") caused unnecessary concern and confusion during setup.
**Action:** Changed the file skipping logic to report identical files with a success icon (✔) to indicate a successful idempotent operation, and used a new warning helper (⚠️) for non-identical skipped files, making the output more informative and less alarming.
