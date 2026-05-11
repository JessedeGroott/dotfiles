## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate file skip reasons in CLI
**Learning:** Using error indicators (✖) for identical files caused false alarms and user distress, while using them for other non-fatal skips also miscommunicated severity.
**Action:** Replaced generic e_error with e_success for idempotent operations ('same file') and a new e_warning (⚠️) for other skip reasons, improving CLI output clarity without causing panic.
