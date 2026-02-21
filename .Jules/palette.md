# Palette's Journal

## 2026-02-21 - [Reducing Alarm Fatigue in CLI]
**Learning:** Using error indicators (red '✖') for benign states like "file already exists" or "unselected menu item" creates alarm fatigue. Users stop paying attention to actual errors because they see red crosses everywhere.
**Action:** Always differentiate between 'failure' (red X), 'warning' (yellow !), 'success/idempotent' (green ✔), and 'neutral/unselected' (white ○) states in CLI output.
