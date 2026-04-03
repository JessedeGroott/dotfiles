## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-04-03 - Improved file skipping UX
**Learning:** Using an error icon (`✖` / `e_error`) when files are correctly skipped due to being identical ("same file") or for other non-fatal reasons causes false-alarm visual stress and misleads the user into thinking the script failed. Expected idempotent states should look successful.
**Action:** Added an `e_warning` (⚠️) logger for non-fatal skips, and updated `do_stuff` to log "same file" skips with `e_success` (✔) and other skips with `e_warning`, eliminating the misleading error output for routine operations.
