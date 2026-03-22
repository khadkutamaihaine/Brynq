<p align="center">
  <h1 align="center">Brynq</h1>
  <p align="center"><strong>All your AI models. One app.</strong></p>
</p>

---

Brynq connects the AI tools you already use — Gemini, Claude, ChatGPT, Llama, Mistral — and makes them work together. Log in with Google, and Brynq automatically finds every model on your machine.

No new subscriptions. No API keys to manage. Your AI, orchestrated.

```
You: "Research the latest on solid-state batteries and summarize the key breakthroughs"

  Gemini:  Searching recent papers and news... Found 12 key developments
           in 2025-2026 including Toyota's sulfide electrolyte breakthrough...

  Claude:  Analyzing Gemini's findings. The most significant trend is the
           shift from oxide to sulfide electrolytes, which reduces interface
           resistance by 10x...

  Llama:   Summary: Three breakthroughs matter most — (1) Toyota's sulfide
           cells hitting 500 Wh/kg, (2) QuantumScape's solid-state pouch
           cells passing automotive qualification, (3) Samsung SDI's...
```

---

## Get started

### Download the desktop app

<p>
  <a href="https://github.com/khadkutamaihaine/Brynq/releases/latest/download/install-brynq.bat">
    <strong>Install for Windows</strong>
  </a>
  &nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="https://github.com/khadkutamaihaine/Brynq/releases/latest/download/install-brynq.sh">
    <strong>Install for macOS / Linux</strong>
  </a>
</p>

### Or install via terminal

```bash
pip install brynq

brynq-runtime start     # Opens the app
brynq-runtime chat      # Terminal chat
brynq-runtime models    # See all detected models
brynq-runtime status    # Check connections
```

---

## How it works

### 1. Log in with Google

One click. Uses your existing Google account to access Gemini. No API keys, no credit card, no extra charges.

### 2. Brynq detects your models

Have Claude installed? Ollama running? ChatGPT CLI? Brynq finds them automatically and adds them to your team. Nothing to configure.

| Model | How Brynq finds it | Cost to you |
|-------|-------------------|-------------|
| **Gemini** | Google OAuth (one-click login) | Your existing Google account |
| **Claude** | Auto-detected if installed on your machine | Your existing subscription |
| **Llama, Mistral, Phi** | Auto-detected via Ollama | Free (runs on your hardware) |
| **ChatGPT** | Auto-detected or paste API key | Your existing subscription or API key |
| **Any Ollama model** | Auto-detected | Free |

### 3. They work together

You ask once. Brynq figures out which model handles which part, then executes locally on your machine. Five strategies:

- **Sequential** — One model's output feeds the next
- **Fan-Out** — Multiple models answer in parallel, best response wins
- **Debate** — Models critique each other's answers
- **Refine** — One drafts, another improves, repeat
- **Single** — Route to the best model for this specific task

---

## Why Brynq

**No extra charges** — Uses the subscriptions and tools you already have. Google OAuth uses your Google account. Claude uses your existing installation. Ollama is free. No surprise bills.

**Private by default** — Local models run entirely on your computer. Your conversations never leave your machine. Cloud models are called directly from your machine to the provider.

**Smarter together** — Models fact-check each other and build on each other's strengths. Together they produce better results than any single model.

**One conversation** — No more opening Claude in one tab, Gemini in another, and ChatGPT in a third. Ask once, get answers from your whole team, in one place.

---

## Security

- **Your keys stay local** — API keys and OAuth tokens are encrypted on your machine. Never sent to our servers.
- **Your data stays local** — Documents and conversations never leave your computer.
- **Encrypted storage** — All credentials stored with Fernet encryption in a machine-bound vault.
- **Tamper-proof** — Execution plans are cryptographically signed and time-limited.

---

## Requirements

- Python 3.10+
- Windows, macOS, or Linux
- Optional: [Ollama](https://ollama.com/download) for free local models

---

## License

See [LICENSE](LICENSE) for details.

---

**Website:** [brynq.ai](https://brynq.ai)

Built by [Gurjeet Grewal](https://github.com/khadkutamaihaine).
