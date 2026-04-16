## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate informative skip messages
**Learning:** During the installation sequence, safely skipping files (because they are already identical) resulted in a false-alarm error symbol (`✖`) being displayed. This caused user confusion and cognitive load, making successful idempotent runs look like failures.
**Action:** Created a new warning log level (`⚠️`) and updated the skip handling logic to output a success indicator (`✔`) for identical files ("same file") and the new warning indicator for other skips (e.g. "destination file newer"), ensuring the visual feedback accurately reflects the neutral/positive nature of an idempotent operation.
