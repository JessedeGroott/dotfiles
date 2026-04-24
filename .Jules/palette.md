## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2026-04-24 - Improved File Skipping Feedback
**Learning:** Marking idempotent/expected behaviors (like skipping identical files) as errors creates unnecessary anxiety and a perception of failure for users during setup scripts.
**Action:** Replaced false-alarm error logs with success (`✔`) for identical files and neutral warnings (`⚠️`) for other valid skip states, reserving errors for actual failures.
