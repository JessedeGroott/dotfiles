## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Refined skip feedback in file operations
**Learning:** Reporting idempotent states (like a file already being correctly copied or linked) with a red error icon (✖) causes user confusion and unnecessary distress during the installation process.
**Action:** Implemented semantic severity for CLI output by separating non-fatal issues (yellow ⚠️) from idempotent successes (green ✔) and fatal errors (red ✖), applying this specifically to the file skipping logic.
