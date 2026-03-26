## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - File skipping feedback clarity
**Learning:** The previous implementation used the \`e_error\` icon and color (\`✖\`) to indicate when a file skip occurred in \`do_stuff\`, regardless of the reason. This triggered unnecessary concern for users, particularly during idempotent operations like "same file" skips, where the system is working as intended.
**Action:** Changed the file skip feedback logic. "Same file" skips now use \`e_success\` (\`✔\`) to reassure users the state is correct, and other skips (like "destination file newer") use a new \`e_warning\` function (\`⚠️\`) to indicate a non-fatal bypass, preserving the error state strictly for true failures.
