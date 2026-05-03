## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-15 - Reduced false positive error states in CLI output
**Learning:** The previous CLI output displayed all non-executable actions (skips) with a red error icon/color (`✖`), causing confusion when the skip was due to a successful idempotent state (e.g. "same file").
**Action:** Introduced an `e_warning` helper to flag non-fatal issues (like destination file newer) with a yellow warning icon (`⚠️`), while successful idempotent operations now use `e_success`. This reduces false alarms and provides clearer feedback on system state.
