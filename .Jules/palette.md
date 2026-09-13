## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-07-05 - Better feedback for file skipping operations
**Learning:** Using a generic red error (`✖`) for non-fatal/idempotent file skips (like "same file") creates a stressful UX and trains users to ignore errors.
**Action:** Introduced `e_warning` for non-fatal skips, and used green success (`✔`) for idempotent skips to align feedback with actual semantic severity.
