## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-23 - Improve false error indicators for idempotent skips
**Learning:** Using error styling (`e_error`) for idempotent/expected skips causes false alarms for users during setup scripts. Appropriate visual semantics (success for idempotency, warning for other non-fatal skips) reduce anxiety and make the terminal output easier to read.
**Action:** Modified the file skipping logic to use `e_success` when a file is skipped because it's the "same file" (idempotent), and `e_warning` for other skip reasons.
