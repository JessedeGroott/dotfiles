## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Reduced false alarms in CLI output
**Learning:** Using an error icon/color (`✖`/red) to indicate that an idempotent operation successfully skipped (e.g., file already linked) caused unnecessary user alarm. Not all skips are failures.
**Action:** Introduced an `e_warning` (⚠️/yellow) helper for non-fatal skips, and repurposed `e_success` (✔/green) specifically for skips due to the destination file already matching the source. This provides clearer visual feedback without raising false alarms.
