## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2025-01-08 - Semantic Terminal Output
**Learning:** Using error icons (`✖`) and red text for non-fatal or idempotent skips (like "same file") creates unnecessary alarm and degrades the UX by making the terminal output look broken when it's actually functioning correctly.
**Action:** Added `e_warning` helper with a yellow warning icon (`⚠️`) for non-fatal skips, and routed idempotent "same file" skips through `e_success` (`✔`). Reserved `e_error` strictly for fatal issues.
