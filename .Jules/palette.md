## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-11-21 - Differentiated benign file skips from fatal errors
**Learning:** The dotfiles script previously reported benign, expected skipped files (e.g., "same file" because it's already copied, or "destination file newer" when the user has customized their local version) using the `e_error` (✖) visual state. This caused false alarms, created visual distress, and could habituate users to ignore actual errors.
**Action:** Implemented a new `e_warning` (⚠️) helper for non-idempotent benign skips (like newer destination) and used `e_success` (✔) for completely expected idempotent skips (like same file), reserving `e_error` for actual failures.
