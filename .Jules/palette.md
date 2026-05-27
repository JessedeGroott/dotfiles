## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-05-27 - Refine skip logging UX in do_stuff
**Learning:** Users were receiving alarming red error messages (e_error) for expected idempotent operations ("same file") or harmless skips ("destination file newer") during the setup process, creating false anxiety and poor CLI UX.
**Action:** Replaced the generic error output with context-aware feedback: expected states like "same file" now show success (✔), while other non-fatal skips use a new warning state (⚠️).
