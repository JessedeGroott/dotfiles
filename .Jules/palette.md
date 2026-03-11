## 2026-03-11 - CLI Output Neutrality
**Learning:** Overusing error styles (red crosses) for neutral states like unselected menu items or idempotent "same file" skips causes false alarms and makes the terminal output feel chaotic or broken when it is functioning normally.
**Action:** Use distinct styling for different contexts. A white empty circle is better for unselected menu options, a green checkmark is better for idempotent "skip: same file" operations, and a yellow warning is better for actual skipped operations (e.g. "destination newer").
