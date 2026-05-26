## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-26 - Differentiate fatal and non-fatal feedback
**Learning:** Users can feel unnecessary distress when successful idempotent operations (like skipping a file because it's exactly the same) or non-fatal skips (like destination is newer) are displayed with the same scary red error icon as actual failures.
**Action:** Differentiated these states by displaying idempotent skips with a green success icon (`e_success`) and non-fatal skips with a yellow warning icon (`e_warning`), rather than a red error.
