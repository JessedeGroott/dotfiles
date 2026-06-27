## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-24 - Improve CLI output severity for setup actions
**Learning:** Using an error icon (✖) for all skipped files during dotfiles setup (e.g. "same file" or "destination file newer") created a confusing, stressful UX where normal idempotent behaviors appeared as fatal errors.
**Action:** Added semantic severity levels: `e_success` (✔) for already-correct states like "same file" and `e_warning` (⚠️) for non-fatal issues like "destination file newer", reserving red errors exclusively for actual failures.
