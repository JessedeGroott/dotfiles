## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2026-06-09 - Graceful display of skipped setup files
**Learning:** Reporting idempotent operations (like skipping a file because it's already properly configured/linked) as errors (with a red ✖) is visually distressing and misleading. Users running setup scripts multiple times see a wall of red errors for a healthy system.
**Action:** Used a success indicator (✔) for neutral/idempotent skips (like "same file") and a warning indicator (⚠️) for other non-fatal skips (like "destination newer") to preserve the error state exclusively for actual failures.
