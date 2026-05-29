## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-29 - Improved CLI file skipping feedback
**Learning:** The previous terminal output for skipping files during setup (e.g. `same file`, `destination file newer`) used the error icon/color (`✖`). This resulted in a wall of red crosses even when the script was safely skipping files because they were identical, which was visually alarming to users.
**Action:** Changed `same file` skipped feedback to success (`✔`) and other non-fatal file skips (like `destination file newer`) to a yellow warning (`⚠️`). Added an `e_warning` helper function to handle this state. Now, only real errors look like errors.
