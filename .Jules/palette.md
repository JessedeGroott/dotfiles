## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Context-aware file skipping feedback
**Learning:** Users were receiving alarming error messages (red ✖) when the install script safely skipped files (either because they were already linked or the destination was newer), causing unnecessary anxiety during setup.
**Action:** Implemented semantic severity for skips: use a success indicator (green ✔) for idempotent skips ("same file") and a warning indicator (yellow ⚠️) for non-fatal skips ("destination file newer") to differentiate them from actual failures.
