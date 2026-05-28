## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-24 - Do stuff skip logging
**Learning:** Displaying idempotent skipped operations as errors (`e_error`) creates false alarm and anxiety for the user, especially when the operation was successful (i.e. 'same file').
**Action:** Use green success checks (`e_success`) for idempotent operations like 'same file', and yellow warnings (`e_warning`) for other non-fatal skips to better communicate system state to the user without unnecessary errors.
