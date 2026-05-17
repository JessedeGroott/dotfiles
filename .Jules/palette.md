## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-17 - Differentiated Feedback for File Skips
**Learning:** Using an error icon (`✖`) for non-fatal file skips (like "same file" or "destination file newer") during an installation or syncing process causes alert fatigue. Users may mistakenly believe the setup failed when it actually performed an idempotent or safe skip.
**Action:** Replaced the generic error log with `e_success` (green checkmark) for idempotent skips ("same file") and `e_warning` (yellow warning) for other non-fatal skips, providing more accurate and reassuring feedback to the user.
