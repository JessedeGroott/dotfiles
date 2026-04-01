## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiating idempotency from warnings
**Learning:** During installation, skipping files because they are already identical ("same file") was being marked as an error (`✖`), confusing users into thinking the installation failed when it was actually an intended idempotent operation.
**Action:** Introduced a new `e_warning` helper with a yellow warning icon (`⚠️`) for non-fatal issues. Modified `do_stuff` to output a success mark (`✔`) for identical files and a warning mark for other skip reasons, preventing false alarms and creating a calmer terminal UX.
