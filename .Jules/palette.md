## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-20 - Improved skip messaging UX to prevent false alarms
**Learning:** In the dotfiles script, skipping a file during setup (e.g., because it already exists and is identical) used the `e_error` (red ✖) visual helper. This triggered false alarm anxiety for users who assumed something broke, when it was actually an expected and successful idempotent operation.
**Action:** Modified the `do_stuff` function logic to check the `$skip` string. If the reason is `"same file"`, it uses `e_success` (green ✔) to indicate positive idempotency. For other skip reasons, a newly introduced `e_warning` (yellow ⚠️) helper is used instead of an error message to convey a non-fatal state.
