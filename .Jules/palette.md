## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Improve file skipping messaging
**Learning:** Treating all skipped files as errors (`e_error`) creates false alarms, especially when the file is skipped because it's identical ("same file"). This makes the script output look concerning when it's actually an idempotent success.
**Action:** Differentiated skip messages in `do_stuff`. Used `e_success` for identical files to indicate successful idempotency, and added a new `e_warning` (yellow ⚠️) for other skip reasons to flag non-fatal issues without using the error icon.
