<p align="center">
  <img src="brynq-logo.jpg" alt="Brynq" width="100" />
</p>

<h1 align="center">Brynq</h1>

<p align="center">
  <strong>Your AI workforce needs an Operating System.</strong><br/>
  Intelligent multi-model orchestration for developers and teams.
</p>

<p align="center">
  <a href="https://pypi.org/project/brynq/"><img src="https://img.shields.io/pypi/v/brynq?color=%2334D058&label=PyPI" alt="PyPI"></a>
  <a href="https://brynq.ai"><img src="https://img.shields.io/badge/Web-brynq.ai-blue" alt="Website"></a>
</p>

<p align="center">
  <a href="https://brynq.ai">Website</a> &middot;
  <a href="https://github.com/khadkutamaihaine/Brynq#readme">Docs</a> &middot;
  <a href="https://pypi.org/project/brynq/">PyPI</a>
</p>

---

# The foundational layer for the world’s first distributed, multi-user AI workforce.

Brynq is an **Intelligent SDK and Social TUI** that turns your terminal into a collaborative command center for humans and AI agents.

##  The Unified Social Grid
Brynq transforms isolated machines into a **Social Compute Mesh**. Create a Room, invite your team, and pool your local resources. Whether it's an RTX 4090 or a Mac Studio, the Brynq Grid allows you to distribute massive agent swarms across every peer in the room, finishing complex projects with the combined power of your entire network.

##  Persistent Semantic Memory (The Exocortex)
Never repeat a prompt again. Every interaction and successful execution is captured in your local **Persistent Exocortex**.
*   **Instant Recall:** Powered by an integrated SQLite FTS5 engine for perfect full-text search across your entire history.
*   **Hive Learning:** Every successful chain is indexed as a "Skill." As you work, the system builds a proprietary data moat, compounding the intelligence of your local environment over time.

##  Shared Workspaces & A2A Protocol
Brynq is built for high-velocity collaboration.
*   **Real-Time Sync:** Our WebSocket relay ensures that when an agent writes code on one machine, it appears in the shared project workspace across the entire team instantly.
*   **Agent-to-Agent (A2A):** Agents communicate through a structured protocol, allowing them to delegate tasks, share results, and coordinate complex multi-step workflows autonomously across different host PCs.

##  Real-World Execution (Unplugged)
Brynq is built for production, not a sandbox. It is wired directly into the engines that drive modern software:
*   **Physical Actuation:** Real browser control via `Playwright` and OS automation via `PyAutoGUI`.
*   **DevOps Autonomy:** Integrated `Terraform` execution for zero-click infrastructure deployment.
*   **Continuous Security:** Real-time codebase auditing using `Bandit` and `Safety` to keep your environment secure.

---

## Install

```bash
pip install brynq
```

## Use (The SDK)

```python
from brynq import Brynq

b = Brynq()
# It auto-detects your local Ollama, Claude CLI, and Gemini CLI.

# 1. Intelligent Routing
b.route("Should I use React or Vue?") # Returns strategy="debate"

# 2. Seamless Ask (Auto-routes to the best model)
res = b.ask("What is the best way to handle auth in FastAPI?")

# 3. Multi-Model Chains (The core differentiator)
res = b.chain("debate", "Should we use Rust or Go?")
```

---

## The Social TUI

Brynq includes a Discord-like workspace for your terminal:

```bash
brynq-runtime tui
```

*   **See who’s online:** Monitor your team’s model availability in real-time.
*   **Agent DMs:** Physically send a task from your computer to your friend’s computer.
*   **Live Sync:** Watch your project file tree light up as agents collaborate on the same code.

---

## Links

- [PyPI](https://pypi.org/project/brynq/)
- [brynq.ai](https://brynq.ai)
- [GitHub Releases](https://github.com/khadkutamaihaine/Brynq/releases)

---

<p align="center">
  <strong>Join the Hive.</strong><br/>
  <code>pip install brynq</code>
</p>
