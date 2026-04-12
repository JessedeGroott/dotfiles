## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Avoided false alarms for idempotent operations
**Learning:** The CLI setup script used the error icon/color (`✖`) to notify users when a file was skipped because it was already identical ("same file"). This created a false alarm and unnecessary error fatigue for standard, successful idempotent operations.
**Action:** Introduced a distinct warning state (`⚠️`) for actual edge cases (e.g. "destination file newer"), and changed "same file" skips to use the success state (`✔`), reserving errors only for true failures.
