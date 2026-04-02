## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Intelligent skip reporting for installation scripts
**Learning:** Returning generic errors or showing visual error indicators for harmless, expected "skips" (like recognizing that a file is already identically copied/linked) causes user confusion and alarm during setups.
**Action:** Introduced a distinct, non-fatal `e_warning` (⚠️) indicator for regular skips while translating "identical file" skips into explicit `e_success` (✔) outputs. This clarifies which actions were genuinely successful (idempotent) versus safely bypassed.
