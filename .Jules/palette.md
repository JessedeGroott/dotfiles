## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate log messages for skipped files
**Learning:** During installation, identically configured files being skipped ("same file") were incorrectly categorized under an error icon (`✖`), causing user confusion and false alarms.
**Action:** Implemented a new `e_warning` icon and differentiated skipped files in `bin/dotfiles`. A skipped "same file" is now considered a success (`✔`), emphasizing an idempotent operation, while other reasons (e.g., "destination file newer") are treated as warnings (`⚠️`), improving the overall user experience and clarity of terminal output.
