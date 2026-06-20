## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-20 - Refined CLI semantic output for skipped files
**Learning:** The previous implementation used an error icon (`✖`) for all non-fatal skips (e.g., when a file is the same as the destination or already exists). This created a visually distressing output and confused users by presenting idempotent operations as errors.
**Action:** Introduced a new warning icon (`⚠️`) and updated the output logic: use success (`✔`) for idempotent skips (e.g., "same file"), warning (`⚠️`) for non-fatal skips, and strictly reserve errors (`✖`) for fatal operations.
