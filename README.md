<p align="center">
  <img src="brynq-logo.jpg" alt="Brynq" width="100" />
</p>

<h1 align="center">Brynq</h1>

<p align="center">
  <strong>Multi-model AI orchestration for Python</strong><br/>
  Chain Claude, Gemini, GPT, and Llama together in 3 lines of code.
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

## Install

```bash
pip install brynq
```

## Use

```python
from brynq import Brynq

b = Brynq()
answer = b.ask("What are the top 3 trends in AI?")
print(answer)
```

That's it. Brynq auto-detects your models (Ollama, Claude, Gemini) and routes to the best one.

---

## SDK

### `b.ask()` — Single model, auto-routed

```python
b.ask("Summarize this report")              # auto-picks best model
b.ask("Write a poem", model="claude")       # specific model
b.ask("Translate to French", model="ollama:mistral")
```

### `b.chain()` — Multiple models working together

```python
# Two models debate, a judge decides
b.chain("debate", "Should we use Rust or Python for our API?")

# Draft → critique → revise
b.chain("refine", "Write a press release for our product launch")

# Models run in parallel, results merged
b.chain("fan_out", "Research the pros and cons of microservices")

# Model A passes context to B to C
b.chain("sequential", "Analyze this data, then visualize it, then summarize")
```

### `b.fallback()` — Automatic failover

```python
# If Claude fails, try Gemini, then Ollama
b.fallback("Explain quantum computing", ["claude", "gemini", "ollama:llama3"])
```

### `b.models()` — What's available

```python
for m in b.models():
    print(f"{m['id']:20s} {m['provider']:12s} {m['type']}")

# ollama:llama3:latest ollama       local
# ollama:mistral:latest ollama      local
# claude               anthropic    cloud
# gemini               google       cloud
```

### `b.cost_report()` — Track usage

```python
report = b.cost_report()
print(f"{report['total_calls']} calls, {report['total_tokens']} tokens")
```

---

## CLI

Brynq also has a full interactive CLI:

```bash
brynq-runtime chat          # Interactive multi-model chat
brynq-runtime models        # List available models
brynq-runtime status        # Show system health
```

Inside chat, type `/help` for all commands.

---

## Chain Strategies

| Strategy | How it works | Best for |
|----------|-------------|----------|
| **Debate** | Models argue opposing sides, a judge decides | Decisions, comparisons |
| **Refine** | Draft → critique → revise cycle | Writing, analysis |
| **Fan-Out** | Models run in parallel, results merged | Research, broad questions |
| **Sequential** | A passes context to B to C | Multi-step pipelines |

---

## Supported Models

| Provider | Models | Auth |
|----------|--------|------|
| **Ollama** | Llama 3, Mistral, Qwen, DeepSeek, Phi | Free (local) |
| **Anthropic** | Claude Opus, Sonnet, Haiku | API key or CLI |
| **Google** | Gemini Pro, Flash | API key or CLI |
| **OpenAI** | GPT-4o, o3 | API key |
| **LM Studio** | Any GGUF model | Free (local) |

Works offline with Ollama. Zero config. No account needed.

---

## How It Works

```
Your Code                              Your Machine
┌──────────────────┐                   ┌─────────────────────┐
│ from brynq import │                   │ Ollama (local)       │
│ Brynq             │──── routes to ──►│ Claude API           │
│                    │    best model    │ Gemini API           │
│ b.ask("...")       │                  │ OpenAI API           │
└──────────────────┘                   └─────────────────────┘
         │
         │ chain strategies
         ▼
┌──────────────────┐
│ brynq.ai (cloud)  │
│ Plans chains       │
│ Scores models      │
│ Signs execution    │
│ Never sees content │
└──────────────────┘
```

**Your data stays on your machine.** The cloud brain only plans which models to use and in what order. It never sees your prompts, documents, or responses.

---

## Links

- [PyPI](https://pypi.org/project/brynq/)
- [brynq.ai](https://brynq.ai)
- [GitHub Releases](https://github.com/khadkutamaihaine/Brynq/releases)

---

<p align="center">
  <strong>Multi-model AI orchestration for Python</strong><br/>
  <code>pip install brynq</code>
</p>
