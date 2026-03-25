## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-03-25 - Improved skip file notifications
**Learning:** The setup script was using an error icon and color (✖) for all skipped files, even when the skip was due to idempotency (the file already matched the destination). This caused unnecessary visual distress and "false alarms" for users rerunning the setup.
**Action:** Distinguished between skip reasons. Used a green success icon (✔) when the skip reason is "same file", and introduced a new yellow warning icon (⚠️) for other skip reasons to provide better context without suggesting a critical failure.
