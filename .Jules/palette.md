## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-19 - Differentiating expected states from errors in CLI feedback
**Learning:** In terminal setup scripts, using a red error icon (`✖`) to report an idempotent skip (like "same file" when copying/linking) creates a false sense of failure and alarm for users running repeated setups.
**Action:** Implemented a new `e_warning` (⚠️) utility for non-fatal issues (like "destination file newer"), and used `e_success` (✔) for expected idempotent states (like "same file"). This correctly maps the visual severity to the actual system state, reducing user anxiety.
