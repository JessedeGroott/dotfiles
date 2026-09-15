## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-07-08 - Use semantic severity for skipped files
**Learning:** Using red error icons (✖) for non-fatal skips or already-correct states (idempotency) visually distresses users and creates false alarms during setup.
**Action:** Implemented semantic feedback severity: green (✔) for idempotent success ("same file"), yellow (⚠️) for non-fatal skips, and strictly reserving red (✖) for fatal operations blocking user intent.
## 2024-07-25 - Improve list readability in CLI
**Learning:** Flat lists in CLI output can be hard to read when there are many items. Indented bullet points create a visual hierarchy and improve scannability.
**Action:** Use indented bullet points (e.g., `  - item`) instead of flat lists for summarizing output in terminal tools.
