## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate severity in CLI feedback
**Learning:** Using a red `✖` (error format) for all non-actionable file operations (e.g., skipping a file because it's identical or simply out-of-date) alarms users by treating routine, non-fatal events identically to fatal errors.
**Action:** Introduced a new warning format (`⚠️`) for non-fatal skips, and reused the success format (`✔`) for idempotent operations like "same file". This ensures a calmer, more semantic UX where users only have to worry when they see red.
