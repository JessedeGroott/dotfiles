## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-07-04 - Semantic CLI Feedback
**Learning:** Using fatal error styling (red ✖) for non-fatal or idempotent skips ("same file") created unnecessary user anxiety and obscured actual failures.
**Action:** Implemented semantic severity levels for CLI output: green ✔ (`e_success`) for idempotent skips, yellow ⚠️ (`e_warning`) for non-fatal skips, reserving red ✖ (`e_error`) strictly for fatal blockers.
