## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-07 - Improve file skip reporting UX
**Learning:** Using error styling (`e_error` / `✖`) for non-fatal or idempotent operations (like skipping a file because it's already the "same file") creates false alarm fatigue for users.
**Action:** Used context-appropriate CLI styling: `e_success` (`✔`) for idempotent skips and `e_warning` (`⚠️`) for other non-fatal skips, preserving `e_error` for actual failures.
