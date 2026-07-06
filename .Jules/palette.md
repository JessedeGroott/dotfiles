## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Semantic Feedback for File Operations
**Learning:** Using an error icon/color (`✖`) for non-fatal file skips (like "same file" or "newer destination") creates a distressing false-positive error state for users.
**Action:** Differentiated skip reasons: use `e_success` (✔) for idempotent skips ("same file") and introduced `e_warning` (⚠️) for other non-fatal skips, strictly reserving red errors for operations blocking user intent.
