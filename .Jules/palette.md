## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Refined CLI skip log output
**Learning:** Using an error indicator (`✖`) and color (red) when skipping a setup step because it is already completed ("same file") causes unnecessary user alarm. Idempotent operations that skip duplicate work are successful outcomes, not failures.
**Action:** Created an `e_warning` (`⚠️`) helper for non-fatal skips (like "destination file newer"), and changed the "same file" skip logic to use `e_success` (`✔`). Reserved `e_error` for actual failures.
