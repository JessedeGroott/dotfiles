## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-04-28 - Distinguishing idempotent success from warnings in CLI output
**Learning:** Displaying skipped identical files during dotfiles setup as "errors" or generic "skips" caused false alarm fatigue. Users interpret idempotent operations (where desired state matches current state) as successful confirmations rather than issues.
**Action:** Implemented a dedicated warning (`e_warning`) helper for non-fatal issues. Updated file-processing logic to log idempotent "same file" skips as successes (`e_success`), and other legitimate skips (like "destination file newer") as warnings (`e_warning`), reserving error logging (`e_error`) exclusively for actual failures. This reduces CLI noise and builds user confidence.
