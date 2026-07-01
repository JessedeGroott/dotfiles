## 2024-05-15 - Improved CLI menu readability
**Learning:** The previous terminal menu implementation displayed raw script filenames (e.g., `10_osx_xcode.sh`) and used an error icon/color (`✖`) for unselected options, which was confusing and visually distressing for users navigating the setup wizard.
**Action:** Transformed raw filenames into human-readable labels (Title Case, no numbers/extensions) in the display layer while keeping the underlying execution logic intact. Also replaced the error icon with a neutral option icon (`○`) for unselected items.

## 2024-05-16 - Semantic severity for CLI skip states
**Learning:** The setup script used an error icon (`✖`) for non-fatal, expected skip states (like "same file" or "destination newer"). This caused false alarms and user distress over perfectly healthy idempotent states.
**Action:** Mapped skip states to semantic feedback: idempotent skips ("same file") now use a success indicator (`✔`), while other non-fatal skips use a new warning indicator (`⚠️`). The error indicator is strictly reserved for actual failures.
