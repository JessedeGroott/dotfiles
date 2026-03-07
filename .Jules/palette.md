
## 2026-03-07 - Refine interactive prompt and skip logging
**Learning:** In a pure bash terminal setup, rendering unselected menu options with `e_error` (a red '✖') and identically logging safe skipped file actions ("same file") as errors creates false alarms and anxiety for the user. They instinctively feel something failed. Human-readable names derived from ugly filenames ("10_osx_xcode.sh" -> "Osx Xcode") increase scanability.
**Action:** Replaced `e_error` with a neutral `e_option` (white '○') for unselected items. Separated `menu_labels` for human-readable display logic from `menu_options` for executable logic. Re-categorized file skips into idempotency `e_success` ("same file") and cautionary `e_warning` (yellow '⚠️').
