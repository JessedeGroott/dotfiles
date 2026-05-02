## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Non-fatal UI state representation and false-alarm fatigue
**Learning:** Using error visual cues (e.g., `e_error` with a red ✖) for non-fatal situations, such as skipping a file that is newer, causes false-alarm fatigue and anxiety during the setup process.
**Action:** Created an `e_warning` helper with a yellow ⚠️ icon to properly convey non-fatal information without raising false alarms.
