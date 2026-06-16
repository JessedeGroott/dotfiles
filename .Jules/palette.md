## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-16 - Differentiate skip messages in setup script
**Learning:** Using an error icon (`✖`) for routine, non-fatal skips (like when a file is identical and idempotent) is misleading and causes user distress. Users shouldn't feel like the script is failing when it's just safely ignoring redundant operations.
**Action:** Implemented semantic console output using a new `e_warning` (yellow ⚠️) function for non-fatal skips, and routed idempotent skips ("same file") to `e_success` (green ✔) to reinforce that everything is working perfectly.
