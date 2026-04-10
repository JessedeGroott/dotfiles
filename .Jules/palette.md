## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-04-10 - Differentiated error and skip notifications in dotfiles installer
**Learning:** The dotfiles installation script used the red error icon (`✖`) for non-fatal events like skipping files that were already correctly symlinked or identical to the target. This created false alarm anxiety for users rerunning the script, as an idempotent success visually looked like an installation failure.
**Action:** Introduced a new `e_warning` helper with a yellow `⚠️` icon for non-fatal skips, and conditionally changed the output to `e_success` (`✔`) when skipping a file because it is already identical ("same file"). This correctly aligns visual feedback with the system state (idempotency is success).
