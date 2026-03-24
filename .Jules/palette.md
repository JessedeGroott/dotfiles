## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-15 - Improved skip messaging clarity
**Learning:** The previous implementation used an error (`✖`) to denote all skipped files during initialization, which falsely alarmed users when files were safely skipped simply because they were already identical (an idempotent success).
**Action:** Added an `e_warning` (`⚠️`) helper and updated the `do_stuff` function to log identical files as `e_success` (`✔`) and other skips as `e_warning`, improving feedback clarity.
