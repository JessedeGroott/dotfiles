## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-11 - Improved terminal feedback semantic severity
**Learning:** Presenting safe, idempotent actions (like skipping a file copy because the "same file" already exists) as fatal errors (✖ / red) causes unnecessary user distress and erodes trust in error reporting.
**Action:** Transitioned to semantic severity levels in `do_stuff`: using `e_success` (✔ / green) for already-correct states and introducing `e_warning` (⚠️ / yellow) for non-fatal skips, strictly reserving red errors for operations that block user intent.
