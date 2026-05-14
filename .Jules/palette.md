## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-15 - Use appropriate visual cues for neutral/success operations
**Learning:** Users are alarmed by error icons/colors (✖ / red) when a process is actually working correctly but skipping redundant work (e.g., idempotency). Treating all skips as errors creates anxiety.
**Action:** Implemented `e_warning` (yellow ⚠️) for non-fatal, legitimate skips and used `e_success` (green ✔) for identical file skips to reinforce that the system is correctly identifying and preserving existing state.
