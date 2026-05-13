## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate feedback states for CLI file skips
**Learning:** Using error formatting (a red ✖) for successful idempotent operations ("same file") or non-fatal skips ("destination file newer") caused false alarms for users during the bootstrap process. Differentiating feedback states is critical for CLI usability.
**Action:** Introduced a distinct `e_warning` (yellow ⚠️) function for non-fatal skips and repurposed `e_success` (green ✔) for idempotent "same file" outcomes. Reserve `e_error` strictly for true failures.
