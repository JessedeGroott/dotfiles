## 2026-03-09 - Improving CLI menu UX and file skip logging
**Learning:** Terminal output needs to clearly distinguish between neutral, successful, and warning states to avoid user alarm. Using red "✖" for unselected menu items or idempotent operations ("same file") feels like an error.
**Action:** Replaced `e_error` with new `e_option` (white "○") for unselected menu items, and `e_success` (green "✔") / `e_warning` (yellow "⚠️") for file skipping based on the skip reason.
