## 2024-03-15 - Interactive CLI Menu Readability
**Learning:** Displaying raw script filenames (like `10_osx.sh`) with error cross marks (`✖`) for unselected options creates false alarms and feels unintuitive for users selecting setup scripts.
**Action:** Implemented a title-case parser (using `sed` and `awk`) to separate internal execution values (raw filenames) from display labels (e.g., `Osx`), and replaced the red cross with a neutral hollow circle (`○`) for unselected items, greatly improving CLI affordance and reducing cognitive load.
