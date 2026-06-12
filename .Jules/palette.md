## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-12 - Replaced error icons with warnings for non-fatal skipped actions
**Learning:** Using red error icons (`✖`) for non-fatal operations (like skipping a file copy because the destination is newer) or idempotent actions (like skipping because the files are identical) causes unnecessary user anxiety, as it looks like a fatal failure blocking the installation script.
**Action:** Created an `e_warning` helper with a yellow warning icon (`⚠️`) and updated the `do_stuff` skip logic to use `e_success` (green `✔`) for idempotent skips ("same file") and `e_warning` for other non-fatal skips, reserving `e_error` strictly for fatal operations.
