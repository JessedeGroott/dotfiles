## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-10-24 - Improved Idempotency Feedback
**Learning:** Reporting idempotent file skipping operations (like "same file") as errors (`e_error`) caused user alarm and diminished trust in the setup scripts, despite no actual failure occurring.
**Action:** Differentiated skip feedback contexts: "same file" skips are now reported as successes (`e_success`) to reinforce idempotency, and non-fatal skips (like "destination file newer") use a new warning level (`e_warning`) to distinguish them from critical errors.
