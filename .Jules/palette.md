## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-18 - Visual Feedback for CLI Idempotency
**Learning:** Using an error state (like `e_error` / red X) for skipped files due to idempotency ("same file") creates unnecessary alarm and a poor developer experience. Successful skips should be visually treated as successes or warnings, reserving errors for actual failures.
**Action:** When implementing CLI output for file operations, distinguish between true errors, warning conditions (e.g. file is newer), and successful idempotent operations (e.g. file is identical), using appropriate color codes and icons for each.
