## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-15 - Adjusted visual feedback for benign skips
**Learning:** Displaying idempotent operations (like skipping a file because it's already identically present) as errors with a red `✖` icon causes unnecessary user anxiety during setup processes.
**Action:** Differentiate skip scenarios using semantic icons: a green `✔` (`e_success`) for idempotent skips ("same file") and a yellow `⚠️` (`e_warning`) for other non-fatal skips, building user confidence instead of panic.
