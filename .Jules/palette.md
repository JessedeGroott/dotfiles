## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiated skipping messages
**Learning:** The previous implementation used an error icon/color (`✖`) when skipping files, such as when the target file was identical to the source file. This caused confusion and made it seem like an error occurred.
**Action:** Replaced the blanket error icon/color with a success icon/color (`✔`) for "same file" skips and a warning icon/color (`⚠️`) for other skips (e.g. "destination file newer").
