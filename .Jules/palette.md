## 2026-02-11 - [CLI Idempotency Feedback]
**Learning:** Using error icons (Red X) for operations that are skipped because they are "already correct" creates false alarms and user anxiety. It implies a failure when the state is actually perfect.
**Action:** Use success indicators (Green Check) for "no-op because done" states, and reserve warnings (Yellow !) for skips that might require attention (e.g., conflicts).
