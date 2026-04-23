## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2025-02-12 - Improved skip messaging UX
**Learning:** Using an error icon/state (red `✖`) for all skipped files creates false alarms, particularly when a skip is actually a successful idempotency check (e.g., "same file").
**Action:** Replaced the indiscriminate error output with a neutral warning (`⚠️`) for standard skips, and a success message (`✔`) for "same file" skips to better convey the state of the operation.
