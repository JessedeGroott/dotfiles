## 2024-05-15 - [Change e_error to e_option in prompt_menu_draw]
**Learning:** Using a red cross `✖` (`e_error`) for unselected menu options is visually alarming and can cause false alarms. Neutral visual states are preferred for unselected options.
**Action:** Replaced `e_error` with a newly created `e_option` function that renders a white circle `○` to provide a calmer and more intuitive UX.
