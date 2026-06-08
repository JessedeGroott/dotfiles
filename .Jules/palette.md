## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-06-08 - Differentiate CLI Skipped states
**Learning:** Treating all skipped files during an installation loop as "errors" (red ✖) causes alarm fatigue for the user. Non-destructive skips ("same file") are actually idempotent successes.
**Action:** Apply `e_success` (green ✔) to idempotent operations and `e_warning` (yellow ⚠️) to non-fatal skips, reserving `e_error` for actual failures.
