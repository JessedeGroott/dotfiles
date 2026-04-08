## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiated skip log levels
**Learning:** Using `e_error` for every skipped file caused a lot of false alarms for users, particularly during idempotent operations like copying an unchanged file.
**Action:** Created an `e_warning` log level, and updated `do_stuff` to differentiate skips: intentional idempotent skips ("same file") now log as `e_success` (green check), while other skips use `e_warning` (yellow alert) instead of an error icon.
