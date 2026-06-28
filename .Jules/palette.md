## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-28 - Semantic Severity for File Operations
**Learning:** The setup script previously marked all skipped files (even idempotent 'same file' skips) as red errors, which trained users to ignore real errors and created unnecessary panic.
**Action:** Replaced generic error flags with green success ticks (✔) for already-correct states and yellow warnings (⚠️) for non-fatal issues, preserving red (✖) exclusively for blocking failures.
