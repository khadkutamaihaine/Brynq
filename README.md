<p align="center">
  <img src="brynq-logo.jpg" alt="Brynq" width="100" />
</p>

<h1 align="center">Brynq</h1>

<p align="center">
  <strong>The operating system for AI workforces</strong><br/>
  Bring your own Claude, Gemini, or Llama. Brynq orchestrates them together.
</p>

<p align="center">
  <a href="https://pypi.org/project/brynq/"><img src="https://img.shields.io/pypi/v/brynq?color=%2334D058&label=PyPI" alt="PyPI"></a>
  <a href="https://brynq.ai"><img src="https://img.shields.io/badge/Web-brynq.ai-blue" alt="Website"></a>
</p>

<p align="center">
  <a href="https://brynq.ai">Website</a> &middot;
  <a href="https://brynq.ai/docs">Docs</a> &middot;
  <a href="https://brynq.ai/marketplace">Marketplace</a> &middot;
  <a href="https://brynq.ai/pricing">Pricing</a>
</p>

---

```
You:  "Analyze our Q1 pipeline and flag deals at risk"

  Claude   Pulled contract history. Acme's champion went on leave — escalate to VP.
  Gemini   Cross-referenced CRM. NovaTech is with legal, not lost. Helios is genuine risk.
  Llama    Summarized: 1 action (escalate Acme), 1 monitor (NovaTech), 1 urgent (Helios).

One prompt. Three models. Zero manual wiring.
```

---

## Install

<table>
<tr>
<td align="center"><strong>Windows Desktop</strong><br/><a href="https://github.com/khadkutamaihaine/Brynq/releases/latest/download/Brynq_0.4.69_x64-setup.exe">Download .exe</a></td>
<td align="center"><strong>Windows MSI</strong><br/><a href="https://github.com/khadkutamaihaine/Brynq/releases/latest/download/Brynq_0.4.69_x64_en-US.msi">Download .msi</a></td>
<td align="center"><strong>pip (all platforms)</strong><br/><code>pip install brynq</code></td>
</tr>
</table>

### Quick Start (CLI)

```bash
pip install brynq
brynq-runtime start
```

That's it. Brynq detects your installed models (Ollama, Claude CLI, Gemini CLI) and starts orchestrating.

---

## What is Brynq?

Brynq chains multiple AI models together to solve tasks that no single model handles well. You type one prompt. Brynq decides which models to use, in what order, with what strategy — then executes locally on your machine.


---

## Chain Strategies

Brynq picks the right strategy automatically based on your prompt.

| Strategy | How it works | Best for |
|----------|-------------|----------|
| **Debate** | Models argue opposing sides, a judge decides | Decisions, comparisons, risk assessment |
| **Refine** | Draft → critique → revise cycle | Writing, analysis, code review |
| **Fan-Out** | Models run in parallel, results merged | Research, data gathering, broad questions |
| **Sequential** | Model A passes context to B to C | Multi-step workflows, pipelines |
| **Single** | Best model for the task, no chain | Quick questions, simple tasks |

---

## Supported Models

| Provider | Models | Auth |
|----------|--------|------|
| **Ollama** | Llama 3, Mistral, DeepSeek, Phi, Qwen, CodeGemma | Free (local) |
| **Anthropic** | Claude Opus, Sonnet, Haiku | Your subscription or API key |
| **Google** | Gemini Pro, Flash | Your subscription or API key |
| **OpenAI** | GPT-4o, GPT-4, o3 | Your API key |
| **LM Studio** | Any GGUF model | Free (local) |

14 model profiles scored across quality, speed, cost, and reliability. Brynq routes each task to the best model automatically.

---

## Key Features

**Multi-Model Orchestration** — One prompt triggers multiple models working together with intelligent strategy selection.

**Multiplayer Rooms** — Create a room, share the code, collaborate in real-time. Pool GPU compute across machines.

**Learning Loop** — Brynq learns which chains work best. Successful patterns become reusable skills that improve over time.

**Session Search** — Full-text search across all your past conversations. Find any discussion instantly.

**Privacy-First** — Your documents, code, and data execute locally. Only orchestration metadata touches our servers. API keys stay in your encrypted vault.

**Platform Gateway** — Connect Telegram, Discord, or Slack bots to your Brynq instance. Messages bridge into rooms automatically.

**Knowledge Base** — GPU-accelerated semantic search across your entire codebase. Ask questions in natural language.

---

## CLI

```bash
brynq-runtime chat                    # Interactive multi-model chat
brynq-runtime chain "analyze this..." # Run a multi-model chain
brynq-runtime models                  # List available models
brynq-runtime status                  # Show system health
brynq-runtime login claude            # OAuth login for Claude
```

75 commands available inside the chat interface. Type `/help` to see them all.

---

## For Teams

- **BYOK** — Everyone uses their existing AI subscriptions. No extra charges.
- **Rooms** — Create private rooms, invite teammates, share compute.
- **Role-based access** — Admins control who can do what.
- **Audit logging** — Every action tracked.
- **Cost tracking** — Token budgets per team, per model, per agent.

---

## For Agent Creators

Build specialized AI agents and list them on the Brynq marketplace. Set your own price. We take 30%, you keep 70%.

Your agent is an HTTP endpoint. Any language, any hosting. Brynq handles discovery, billing, and payouts.

---

## Stack

- **Runtime**: Python, FastAPI, stdlib HTTP (zero heavy deps)
- **Cloud**: FastAPI, SQLite, HMAC-SHA256 signed plans
- **Auth**: OAuth 2.0 PKCE + BYOK API keys + Fernet vault
- **Search**: BAAI/bge-base-en-v1.5 embeddings, FTS5 full-text
- **Persistence**: SQLite (WAL mode) for chat, rooms, skills
- **Rooms**: WebSocket P2P relay, cloud signaling
- **Tests**: 4,700+ passing

---

## Links

- [brynq.ai](https://brynq.ai) — Platform
- [Documentation](https://brynq.ai/docs)
- [Marketplace](https://brynq.ai/marketplace)
- [Pricing](https://brynq.ai/pricing)
- [PyPI Package](https://pypi.org/project/brynq/)

---

<p align="center">
  <strong>The operating system for AI workforces</strong><br/>
  <a href="https://brynq.ai">brynq.ai</a>
</p>
