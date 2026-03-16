## 2024-05-24 - Console UX: Avoid Negative Visuals for Neutral States
**Learning:** Using negative visual indicators like red "✖" marks or `e_error` for neutral states (e.g. an unselected item in a menu) or routine idempotent actions (e.g. skipping a file because it's already identical) causes false alarms and a poor user experience.
**Action:** Use neutral indicators (like `e_option`'s "○") for unselected menu states, and positive/warning indicators (`e_success`/`e_warning`) for routine script behaviors rather than universally throwing error states.
