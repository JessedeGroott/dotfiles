## 2024-05-24 - Unselected Menu States
**Learning:** Using error styles (like a red "X") for unselected menu items creates false alarm fatigue and makes the UI feel hostile. Neutral states should use neutral styling to avoid conveying failure where none exists.
**Action:** Replaced `e_error` with a new `e_option` (neutral circle `○`) for unselected states in the interactive CLI menu to ensure a neutral visual state.
