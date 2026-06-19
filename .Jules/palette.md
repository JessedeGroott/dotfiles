## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-19 - Semantic CLI Skip Feedback
**Learning:** The CLI setup script previously used a fatal error indicator (`✖`) for all skipped operations, including safe, idempotent skips like "same file". This caused user confusion as normal operations looked like critical failures.
**Action:** Introduced a new warning indicator (`e_warning` with `⚠️`) for non-fatal skips (e.g. "destination file newer"), and re-mapped idempotent skips ("same file") to the success indicator (`e_success`). This ensures users only see errors for actual failures.
