## 2025-02-18 - Reduce Alarm Fatigue in CLI Output
**Learning:** Using error indicators (red cross `✖`) for neutral or positive states (like skipping a file because it is already identical) creates false alarm fatigue. Users may ignore actual errors if they are conditioned to see red for normal operations.
**Action:** Reserve error indicators for actionable failures. Use success indicators (green check `✔`) for verified states (even if "skipped") and neutral/warning indicators (white `○`, yellow `⚠️`) for other non-critical information.
