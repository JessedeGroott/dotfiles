## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Clearer idempotency indicators
**Learning:** The setup script previously showed red error icons (✖) when skipping identical files during repeated runs, causing users to mistakenly think the script failed.
**Action:** Replaced the false-alarm error with a green success icon (✔) for "same file" skips (indicating successful idempotency) and a yellow warning sign (⚠️) for other skip reasons.
