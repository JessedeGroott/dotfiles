## 2024-03-18 - Semantic CLI Output
**Learning:** Using red error styling (✖) for unselected menu options or neutrally skipped files (like identical target files) creates false alarms and user fatigue.
**Action:** Use neutral indicators (○) for unselected options, green (✔) for idempotent success (like "same file"), and yellow warnings (⚠️) for non-fatal skips. Save red errors only for actual failures.
