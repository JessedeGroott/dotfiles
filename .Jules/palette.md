## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-24 - Refine Error Messages for Skipped Files
**Learning:** Using an error style (red cross) for non-fatal or expected skips (like 'same file' or 'destination file newer') creates a false sense of failure and poor UX. Idempotent operations should be marked as success, and non-fatal skips as warnings.
**Action:** Use `e_success` for expected identical states and `e_warning` for non-fatal skips to provide accurate, less alarming feedback to the user.
