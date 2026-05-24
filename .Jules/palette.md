## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.
## 2024-05-24 - Differentiate Error and Warning CLI States
**Learning:** Terminal outputs treating non-actionable neutral states (like skipping existing files) as errors (red cross) causes alarm and degrades the UX. Proper semantic indicators (success vs warning) improve user trust.
**Action:** Ensure CLI tools differentiate between fatal errors, soft warnings, and idempotent successes.
