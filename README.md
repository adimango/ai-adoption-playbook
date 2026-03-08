# AI Adoption Playbook

*From "we're exploring AI" to board-ready results.*

A skills framework for leaders responsible for AI adoption — founders, CTOs, CAIOs, VPs of Engineering, COOs, or anyone who needs to show the board that AI investment is producing results.

<p align="center">
  <img src="assets/ai-adoption-playbook-full.gif" alt="AI Adoption Playbook demo" width="800">
</p>

## The Problem

Leadership asks "what's your AI strategy?" You bought tool licenses. You told the team to use them. Nothing happened. Next board meeting, you say "we're exploring AI." The board is unimpressed. Repeat.

This playbook breaks that loop with a structured process: diagnose what's stuck, build a plan with owners and milestones, and produce board-ready updates with real numbers.

## Quick Start

1. Clone this repo
2. Open it in [Claude Code](https://docs.anthropic.com/en/docs/claude-code)
3. Say: **"My board is asking about our AI strategy"**

The playbook will run a fluency assessment, diagnose your blockers, and guide you to the right next step.

## Skills

### Component Skills
| Skill | What it produces |
|-------|-----------------|
| `adoption-scorecard` | Snapshot of who uses what AI tools, how often, how well |
| `board-ai-update` | Board-ready narrative with specific numbers |
| `tool-stack-audit` | What you pay for vs. what gets used |
| `roi-calculator` | Quantified impact in terms your board cares about |

### Interactive Skills
| Skill | What it does |
|-------|-------------|
| `fluency-assessment` | Entry point — scores your team across three pillars |
| `blocker-diagnosis` | Deep dive into what's stuck and why |
| `first-use-case-picker` | Finds the right starting point for maximum visible wins |
| `90-day-plan-builder` | Phased rollout with board-cycle milestones |
| `board-narrative-coach` | Practice with a skeptical VC, then draft the update |

### Workflow Skills
| Skill | What it orchestrates |
|-------|---------------------|
| `full-adoption-cycle` | Assessment -> diagnosis -> use case -> plan -> narrative |
| `quarterly-review` | Re-assess, compare to last quarter, generate board update |

## How It Works

Every AI adoption failure maps to one of three pillars:

1. **Psychological barriers** — fear, identity threat, "I don't need it"
2. **Integration failures** — tools don't fit workflows, wrong use cases, too much friction
3. **Ownership gaps** — nobody owns it, no metrics, no accountability

The playbook diagnoses which pillars are blocking you, then guides you through fixing them in an order that produces board-reportable results.

## Installation

Requires [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

**Install as a plugin:**

```bash
claude plugin install ai-adoption-playbook
```

**Or clone and use directly:**

```bash
git clone https://github.com/adimango/ai-adoption-playbook.git
cd ai-adoption-playbook
```

Once installed, say **"My board is asking about our AI strategy"** and the playbook takes over.

**Test locally during development:**

```bash
claude --plugin-dir ./ai-adoption-playbook
```

Skills are namespaced as `/ai-adoption-playbook:skill-name` (e.g., `/ai-adoption-playbook:fluency-assessment`).

Future: MCP server packaging for use with Claude Desktop, Cursor, and other MCP-compatible clients.

## License

MIT
