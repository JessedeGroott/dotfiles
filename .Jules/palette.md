## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Semantic Severity in CLI Output
**Learning:** Using error icons (✖) for non-fatal skips like "destination file newer" or idempotent actions like "same file" causes unnecessary alarm and degrades the CLI user experience. Users rely on visual cues to quickly assess the success of setup operations.
**Action:** Implemented semantic severity in the `do_stuff` loop, utilizing `e_success` (✔) for idempotent skips and a new `e_warning` (⚠️) helper for non-fatal skips, reserving `e_error` (✖) strictly for actual failures.
