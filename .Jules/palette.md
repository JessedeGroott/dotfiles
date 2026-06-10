## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-10-24 - Differentiate UI feedback severity for skipped tasks
**Learning:** In idempotent CLI scripts, treating intentional/safe skips (like a file already existing with the identical content) with the same scary red `✖` error as actual failures causes unnecessary user panic. Users learn to ignore red text if it doesn't actually mean anything broke, degrading the usefulness of actual error messages.
**Action:** When providing feedback on skipped operations, use appropriate semantic severity: display green `✔` success for already-correct states, yellow `⚠️` warnings for non-fatal skips, and reserve red `✖` errors strictly for fatal operations that block the user's intent.
