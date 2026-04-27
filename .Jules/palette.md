## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - Non-error feedback for skipped items
**Learning:** Using an error icon/color (`✖`) to report benign skip conditions (like a file already being correctly linked or missing dependencies) causes false alarms and erodes user trust in error messages. Idempotent operations should feel like successes.
**Action:** Replaced hard error logging in the dotfiles install loop with contextual feedback: success (`✔`) for identical files and a new warning state (`⚠️`) for other benign skips, keeping error (`✖`) strictly for true failures.
