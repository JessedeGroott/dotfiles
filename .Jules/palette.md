## 2024-05-22 - [CLI Feedback: Errors vs Warnings]
**Learning:** Using an "Error" style (Red X) for skipped operations (idempotency checks) causes user anxiety and confusing feedback, implying failure when the state is actually correct.
**Action:** Distinguish "Fatal Errors" from "Informational Skips" or "Warnings" using distinct colors and symbols (e.g., Yellow Warning vs Red Error).
