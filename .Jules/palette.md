## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-22 - Differentiate non-fatal skips in CLI
**Learning:** The CLI script previously reported all bypassed files using a red error icon (`✖`), causing users to interpret completely normal, idempotent skips (like a file already being identical) as installation failures.
**Action:** Modified the CLI output logic to categorize skips intelligently: identical files now return a green success checkmark (`✔`), while other non-fatal skips display a yellow warning sign (`⚠️`), reserving the error style for actual breaking issues.
