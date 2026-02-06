## 2026-02-06 - alarming-skipped-files
**Learning:** Using error styles (red X) for non-fatal skipped actions causes unnecessary alarm. Users interpret 'error' as 'something failed', whereas 'skipping' is often an intentional state (e.g., file already exists).
**Action:** Use a warning or info style (yellow ! or blue i) for skipped or idempotent actions to reduce user anxiety.
