<p align="center">
  <img src="brynq-logo.jpg" alt="Brynq" width="120" />
  <h1 align="center">Brynq</h1>
  <p align="center"><strong>The operating system for AI workforces</strong></p>
</p>

---

Orchestrate Claude, Gemini, GPT, Llama, and **2,600+ AI tools** from one platform. Your team brings their own AI subscriptions — Brynq makes them work together.

```
You: "Review this quarter's pipeline data and flag any deals at risk"

  Gemini:  Pulled Q1 data from Salesforce. 3 deals flagged: Acme Corp
           ($240K) missed last check-in, NovaTech ($180K) has no next
           steps logged, and Helios ($95K) pushed close date twice.

  Claude:  Cross-referencing with email threads and calendar: Acme's
           champion went on leave March 1. Recommend escalating to their
           VP. NovaTech's contract is with legal — likely stalled there,
           not lost. Helios is genuinely at risk.

  Llama:   ● Acme — escalate to VP (champion on leave)
           ● NovaTech — follow up with legal (not lost)
           ● Helios — at risk, needs intervention this week
```

---

## Get started

```bash
pip install brynq

brynq-runtime start     # Opens the app + detects all your models
brynq-runtime chat       # Interactive multi-model chat
brynq-runtime models     # List all detected models
```

Or [download the desktop app](https://github.com/khadkutamaihaine/Brynq/releases/latest/download/Brynq_0.3.0_x64-setup.exe) for Windows.

---

## What Brynq does

### Multi-model orchestration
One prompt, multiple AI models working together. Brynq automatically picks the right strategy:

| Strategy | How it works | Best for |
|----------|-------------|----------|
| **Debate** | Two models argue, a third judges | Comparisons, decisions |
| **Refine** | One drafts, another critiques, first revises | Creative work, writing |
| **Fan-Out** | Models run in parallel, results merged | Research, analysis |
| **Sequential** | A→B→C with context passing | Multi-step workflows |
| **Single** | One model, direct response | Simple questions |

### 2,600+ marketplace tools
GitHub, Salesforce, Slack, databases, web search, document processing — install with one click, chain with any AI model.

```bash
brynq-runtime chain "pull my GitHub PRs, analyze with Claude, summarize with Llama"
```

### Bring your own keys (BYOK)
Use your team's existing Claude, Gemini, and ChatGPT subscriptions. Add free local models via Ollama. No new vendor contracts.

### Privacy-first
All processing runs locally. Your documents, code, and data never touch our servers. Only orchestration metadata is shared.

---

## Supported models

| Model | Provider | How to connect |
|-------|----------|---------------|
| Claude (Opus, Sonnet, Haiku) | Anthropic | OAuth login or API key |
| Gemini (Pro, Flash) | Google | OAuth login or API key |
| GPT-4, GPT-4o | OpenAI | API key |
| Llama 3, Mistral, DeepSeek | Ollama | Auto-detected (local) |
| Phi, Qwen, CodeGemma | Ollama | Auto-detected (local) |
| Any GGUF model | LM Studio | Auto-detected (local) |

---

## For agent creators

Build specialized AI agents and list them on the Brynq marketplace. Set your own price — **Brynq takes 15%, you keep 85%.**

```
Your agent: HTTP endpoint + JSON in/out. Any language, any hosting.
Listing:    Set your price, write your description, submit for review.
Payments:   Brynq handles billing via Stripe Connect.
```

[Learn more about creating agents →](https://brynq.ai/pricing)

---

## Architecture

```
brynq.ai (Cloud)                          User's Machine
┌─────────────────────────┐               ┌──────────────────────────┐
│ Chain Planner (our IP)  │   signed      │ Plan Executor            │
│ ├── Intent classifier   │   plans       │ ├── Local Bridge → Ollama│
│ ├── Strategy selector   │◄────────────► │ ├── Cloud Bridge → Claude│
│ ├── Model scorer        │   metadata    │ ├── Agent Bridge → Tools │
│ └── Quality evaluator   │   only        │ └── Privacy Filter       │
│                         │               │                          │
│ Marketplace (2,600+)    │               │ User content stays here  │
│ Agent Registry          │               │ API keys stay here       │
└─────────────────────────┘               └──────────────────────────┘
```

**What stays on our servers:** Chain planning, model scoring, marketplace catalog.
**What stays on your machine:** Your data, API keys, model outputs, agent execution.

---

## Links

- [brynq.ai](https://brynq.ai) — Platform
- [Marketplace](https://brynq.ai/marketplace) — 2,600+ AI tools
- [Pricing](https://brynq.ai/pricing)
- [Documentation](https://brynq.ai/docs) — Guides and API reference

---

<p align="center">
  <strong>The operating system for AI workforces</strong><br/>
  <a href="https://brynq.ai">brynq.ai</a>
</p>
