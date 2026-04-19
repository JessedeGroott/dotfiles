## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-04-19 - Contextual status indicators for skipped files
**Learning:** Using an error style (e.g. red ✖) for non-error skips (like a file already being identical/linked) creates false alarms and a distressed user experience.
**Action:** Replaced the generic `e_error` for skips with contextual output: `e_success` (green ✔) when the state is correct (idempotent), and a new `e_warning` (yellow ⚠️) for other skips.
