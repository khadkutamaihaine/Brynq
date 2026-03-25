<p align="center">
  <img src="brynq-logo.jpg" alt="Brynq" width="120" />
  <h1 align="center">Brynq</h1>
  <p align="center"><strong>The operating system for AI workforces</strong></p>
</p>

---

Orchestrate Claude, Gemini, GPT, Llama, and **2,600+ AI tools** from one platform. Your team brings their own AI subscriptions. Brynq makes them work together — and gets smarter every time.

```
You: "Analyze our Q1 pipeline and flag deals at risk"

  Gemini → Salesforce:  Pulled Q1 data. 3 deals flagged: Acme ($240K)
           missed check-in, NovaTech ($180K) stalled, Helios ($95K) slipping.

  Claude → Email+Cal:   Acme's champion went on leave March 1 — escalate
           to VP. NovaTech is with legal, not lost. Helios is genuine risk.

  Brynq:  Summary: 1 action (escalate Acme), 1 monitor (NovaTech),
          1 urgent (Helios needs intervention this week).
```

One prompt. Three models. Two data sources. Zero manual wiring.

---

## Get started

```bash
pip install brynq

python -m brynq
```

Or [download the desktop app](https://github.com/khadkutamaihaine/Brynq/releases/latest).

---

## What Brynq does

### Multi-model orchestration
One prompt, multiple AI models working together. Brynq picks the right strategy automatically.

| Strategy | How it works | Best for |
|----------|-------------|----------|
| **Debate** | Models argue, a judge decides | Decisions, comparisons |
| **Refine** | Draft, critique, revise | Writing, analysis |
| **Fan-Out** | Models run in parallel, merge results | Research, data gathering |
| **Sequential** | A passes context to B to C | Multi-step workflows |
| **Swarm** | Up to 20 agents working in parallel | Large projects |

### 2,600+ tools, one marketplace
Connect to any API, database, or service. GitHub, Salesforce, Slack, Stripe, PostgreSQL, and thousands more. Install with one click or let Brynq auto-detect what you need.

```
You: "What are my open GitHub PRs?"

  Brynq:  [Auto-installed: GitHub]
          You have 3 open PRs...
```

### Universal protocol support
Point Brynq at any endpoint. It figures out the protocol and connects.

- **REST APIs** — any OpenAPI/Swagger spec
- **GraphQL** — introspection-based discovery
- **SQL** — PostgreSQL, MySQL, SQLite
- **MCP** — Model Context Protocol servers
- **gRPC** — service reflection
- **WebSocket** — real-time streams

### Persistent memory
Brynq remembers across conversations. Project context, past decisions, and outcomes feed into every response. The more you use it, the better it gets.

### Privacy-first
All execution runs locally. Your documents, code, and data never touch our servers. API keys stay in your encrypted vault. Only orchestration metadata is shared.

---

## Supported models

| Provider | Models |
|----------|--------|
| Anthropic | Claude Opus, Sonnet, Haiku |
| Google | Gemini Pro, Flash |
| OpenAI | GPT-4, GPT-4o |
| Ollama | Llama 3, Mistral, DeepSeek, Phi, Qwen, CodeGemma |
| LM Studio | Any GGUF model |

Bring your own subscriptions. No extra charges.

---

## For teams

- **BYOK** — everyone uses their existing AI subscriptions
- **Shared workspaces** — chains, templates, and agents shared across the team
- **Agent marketplace** — install specialized tools, or build and sell your own
- **Role-based access** — control who can do what
- **Audit logging** — every action tracked
- **Resource management** — compute budgets per agent, cost tracking, ROI reports

---

## For agent creators

Build specialized AI agents and list them on the Brynq marketplace. Set your own price. We take 15%, you keep 85%.

Your agent is an HTTP endpoint that accepts prompts and returns results. Any language, any hosting. Brynq handles discovery, billing, and payouts via Stripe Connect.

---

## Architecture

```
brynq.ai (Cloud Brain)                    Your Machine
+--------------------------+              +---------------------------+
| Chain Planner            |   signed     | Plan Executor             |
|   Intent classifier      |   plans      |   Local Bridge  --> Ollama|
|   Strategy selector      |<------------>|   Cloud Bridge  --> Claude|
|   Model scorer           |   metadata   |   Agent Bridge  --> Tools |
|   Quality evaluator      |   only       |   Memory Engine           |
|                          |              |   Security Sandbox        |
| Marketplace (2,600+)     |              |                           |
| Agent Registry           |              | Your data stays here.     |
+--------------------------+              +---------------------------+
```

---

## Links

- [brynq.ai](https://brynq.ai) — Platform
- [Marketplace](https://brynq.ai/marketplace) — 2,600+ tools
- [Pricing](https://brynq.ai/pricing)
- [Documentation](https://brynq.ai/docs)

---

<p align="center">
  <strong>The operating system for AI workforces</strong><br/>
  <a href="https://brynq.ai">brynq.ai</a>
</p>
