## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - [Warning state over errors for skips in CLI setup scripts]
**Learning:** For installation/setup scripts that skip actions idempotently (e.g. file already exists, symlink is already correct), presenting these skips identically to hard errors creates unnecessary cognitive load and alarm for users.
**Action:** Use specific status colors/icons for different terminal outputs (e.g. green for identical files, yellow for non-fatal skipped files, and red exclusively for actual failures) so users can easily distinguish between "no action needed" and "something broke".
