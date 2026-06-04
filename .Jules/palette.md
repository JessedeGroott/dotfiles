## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-18 - Improved file skipping UX feedback in CLI
**Learning:** Treating idempotent actions (like skipping a file because it is the "same file") as errors causes false alarms and a false sense of failure for users. Using error feedback for expected idempotency or non-fatal skips is misleading and bad UX.
**Action:** Replaced the default error state with success feedback (`✔`) for idempotent actions ("same file") and a non-fatal warning state (`⚠️`) for other skip reasons (e.g., "destination file newer"). Introduced a new `e_warning` helper function to handle non-fatal issues gracefully.
