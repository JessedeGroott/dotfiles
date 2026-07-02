## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Semantic indicators for skipped actions
**Learning:** Using a catch-all error indicator (✖) for all skipped operations caused false alarm anxiety when operations were safely skipped due to idempotency ("same file").
**Action:** Introduced an `e_warning` (⚠️) for non-fatal skips, and promoted idempotent skips to `e_success` (✔) to visually reassure users during the setup wizard.
