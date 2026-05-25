## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Differentiate idempotent success from errors
**Learning:** Treating expected, idempotent operations (like skipping a file because it is already identical to the source) as "errors" degrades user trust and creates unnecessary visual alarm during normal execution.
**Action:** Changed the script's output to emit a success indicator (`✔`) when a file skip is due to being identical, and a warning indicator (`⚠️`) for other non-fatal skips (like destination being newer). Reserved the error indicator (`✖`) for actual fatal failures.
