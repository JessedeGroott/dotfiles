## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - Distinct states for skipped file errors
**Learning:** The dotfiles setup script used red error messages (`e_error`) universally when skipping files, even for harmless idempotent cases (e.g., file already correctly linked). This caused false alarm distress for users running the setup script multiple times.
**Action:** Introduced a distinct `e_warning` (yellow ⚠️) state for non-fatal conflicts, and used `e_success` (green ✔) when skipping files that are already identical ("same file"), explicitly confirming idempotency rather than throwing a superficial error.
