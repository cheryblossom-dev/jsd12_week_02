# Gemini CLI: Feature Guide & Context

This document provides a comprehensive overview of the specialized commands and workflows available within the Gemini CLI to optimize your development experience.

---

## 1. Lifecycle Commands

### `/init`
- **Purpose:** Synchronizes the agent with your current workspace.
- **Action:** Triggers a deep scan of your directory structure, reads core configuration files (like `GEMINI.md`, `package.json`, etc.), and builds an initial mental map of the project.
- **When to use:** Run this at the start of every session or after making significant structural changes to your project.

### `/compress`
- **Purpose:** Context management and token efficiency.
- **Action:** Summarizes the current conversation history into a concise "checkpoint." This clears the "noise" of previous turns while preserving critical decisions, discovered facts, and pending tasks.
- **When to use:** Use this when the conversation becomes long or if the agent starts to hit context limits. It keeps the agent fast and focused.

---

## 2. Advanced Sub-Agents
Gemini CLI utilizes specialized sub-agents to handle complex tasks without bloating your main session:

- **`codebase_investigator`:** Use for deep architectural analysis, finding root causes of bugs, or understanding cross-file dependencies.
- **`generalist`:** Ideal for high-volume batch operations (e.g., "Add a header to all 50 files") or running commands with massive output.
- **`cli_help`:** Your direct line to documentation about the CLI's own capabilities and current state.

---

## 3. Core Workflow: Research -> Strategy -> Execution

The agent operates on a disciplined engineering cycle:
1.  **Research:** Uses `grep_search`, `glob`, and `read_file` to verify the state of the code. **Empirical reproduction** of bugs is mandatory here.
2.  **Strategy:** Presents a high-level plan for your approval before making changes.
3.  **Execution:**
    *   **Plan:** Specific technical steps.
    *   **Act:** Surgical code edits using `replace` or `write_file`.
    *   **Validate:** Running tests, linters, and type-checks to ensure the fix actually works and breaks nothing else.

---

## 4. Key Engineering Mandates

-   **Plan Mode (`enter_plan_mode`):** Used for complex features or new applications to create a "Design Doc" before a single line of code is written.
-   **Surgical Edits:** The agent prefers `replace` over `write_file` for large files to avoid overwriting unrelated code.
-   **Security First:** The agent will never print or commit secrets/`.env` files.
-   **Testing as Finality:** A task is not "Done" until it is verified by a test.

---

## 5. User Interaction Hints
-   **Confirmations:** You will be asked to confirm shell commands that modify your system (e.g., `npm install`, `rm -rf`).
-   **Real-time Hints:** You can provide course corrections during execution (e.g., "Actually, use the `User` table instead of `Customer`").
-   **Monospace Rendering:** All output is optimized for the terminal; use markdown for clarity.
