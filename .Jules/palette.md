## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2025-02-12 - Improve semantics for idempotent skips
**Learning:** Using an error icon/color (`✖`) to indicate that an operation was intentionally skipped because a file is already identical ("same file") introduces visual false-alarms. Users interpret identical files as a success of idempotency, while unexpected skips (like "destination file newer") act as warnings, neither being true failures.
**Action:** Introduced a distinct `e_warning` (⚠️) helper for non-fatal unexpected skips and mapped "same file" skips to `e_success` (✔). This clarifies system state and reduces cognitive load by distinguishing between actual errors, warnings, and successful idempotency.
