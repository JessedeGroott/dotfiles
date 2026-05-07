## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-15 - Refined file skipping output
**Learning:** Returning `e_error` for successfully skipped files (idempotent 'same file' skips) creates false alarms for users during setup. Differentiating benign skips (`e_success`) from unexpected skips (`e_warning`) greatly reduces anxiety and confusion in CLI tools.
**Action:** Always map the intent of CLI output to its visual representation: success/idempotent -> green check, warning/unexpected -> yellow warning, actual failure -> red cross.
