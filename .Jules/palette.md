## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-06-25 - Differentiated semantic severities for skipped tasks
**Learning:** Using a red error icon (✖) for non-fatal skips, such as an idempotent action where the file is already identical ("same file") or simply missing the destination, causes unnecessary distress to the user navigating setup wizards. Users perceive skips incorrectly as failures.
**Action:** Applied semantic feedback conventions. Used a green success indicator (✔) for idempotent skips ("same file") since the desired state is already met, and introduced a yellow warning indicator (⚠️) for other non-fatal skips, preserving red errors exclusively for actual blocking failures.
