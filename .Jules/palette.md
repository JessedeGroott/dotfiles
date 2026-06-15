## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Clarify skip messaging severity
**Learning:** Marking non-fatal file skips (like "same file" or "destination file newer") with a red error icon (✖) causes false alarm and user anxiety during setup.
**Action:** Introduced a yellow warning (⚠️) for non-fatal skips, and a green success (✔) for idempotent "same file" skips to accurately reflect action severity.
