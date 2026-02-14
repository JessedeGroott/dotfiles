# Palette's Journal

## 2024-10-24 - Avoiding False Alarms in Status Reporting
**Learning:** Using an error icon (red X) for a neutral or skipped state (like "same file" or "unselected option") causes unnecessary alarm and reduces the impact of actual errors. In the dotfiles script, "same file" skips and unselected menu items were displayed with a red cross, making the output look like a failure report.
**Action:** Use neutral indicators (like a white circle `○` or dimmed text) for skipped/neutral states, and reserve error indicators `✖` for actual failures. Implemented `e_option` (white circle) for these cases.
