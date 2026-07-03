## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-07-03 - Proper semantic severity for skipped file operations
**Learning:** Using a fatal error indicator (✖) for non-fatal skips or idempotent operations (like skipping a file because it's already identical to the destination) creates false alarm and distress for users running setup scripts.
**Action:** Introduced a dedicated `e_warning` (yellow ⚠️) for non-fatal skips, and reused `e_success` (green ✔) to explicitly celebrate idempotent "same file" matches as a correct state, keeping `e_error` strictly for real failures.
