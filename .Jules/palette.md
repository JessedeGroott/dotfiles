## 2024-05-22 - Replace error icon with neutral option icon for unselected menu items
**Learning:** Using an error state (red ✖) for unselected items in an interactive menu causes false alarms, making users think something is broken when they just haven't selected an option.
**Action:** Introduced a neutral `e_option` helper with a white circle (○) to represent unselected options, preserving vertical alignment and communicating state clearly without causing anxiety.
