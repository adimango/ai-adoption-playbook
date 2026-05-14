# AI Adoption Playbook

A skills framework for leaders responsible for AI adoption — founders, CTOs, CAIOs, VPs of Engineering, COOs, or anyone who needs to show the board that AI investment is producing results. Not a coding tool. Not a PM tool. A consulting methodology in agent-readable skills.

## Who This Is For

Any leader who got handed the "make AI work here" mandate and has to report progress to leadership. This includes:

- **Founders and CTOs** — board is asking about AI strategy, need structured answers
- **VPs/Directors of Engineering** — got "AI adoption" added to their OKRs, need to move 50-200 engineers
- **Chief AI Officers and fractional CAIOs** — need a repeatable framework across teams or clients
- **COOs at non-tech companies** — no CTO exists, AI adoption landed on their desk
- **Consultants and advisors** — need a structured diagnostic and planning methodology for client engagements

Skills adapt to company size and role: lighter touch for small teams, deeper process for large orgs.

NOT for: companies with established AI/ML teams already driving adoption, engineers seeking coding tools, ML researchers.

## The Problem

Founders buy AI tool licenses, tell teams to use them, nothing happens. Board asks "what's your AI strategy?" — no good answer. This playbook breaks that loop.

## Three Pillars

Every AI adoption failure maps to one of these. Every skill diagnoses or addresses them.

1. **Psychological barriers** — fear of replacement, identity threat ("I don't need a crutch"), perfectionism, social signaling
2. **Integration failures** — tools don't fit workflows, wrong first use case, too much friction, tried once and gave up
3. **Ownership gaps** — nobody owns it, no metrics, no accountability, no feedback loop, leadership doesn't model behavior

## Board-Readiness Principle

The throughline. Every skill output must be expressible in terms a VC understands: specific numbers, clear timelines, named owners, ROI framing. No "we're exploring." No "our developers love it." Numbers or it didn't happen.

## Skill Invocation

When invoking skills via the Skill tool, you MUST use the fully-qualified name with the `ai-adoption-playbook:` prefix. For example:
- `Skill(ai-adoption-playbook:fluency-assessment)` — NOT `Skill(fluency-assessment)`
- `Skill(ai-adoption-playbook:blocker-diagnosis)` — NOT `Skill(blocker-diagnosis)`

This applies to ALL skills in this plugin. Short names in documentation are for readability — always add the `ai-adoption-playbook:` prefix when calling the Skill tool.

## Skill Chaining Rules

1. `fluency-assessment` MUST run before any other interactive or workflow skill. It's the diagnostic before the prescription.
2. `full-adoption-cycle` orchestrates the complete sequence: fluency-assessment -> blocker-diagnosis -> first-use-case-picker -> 90-day-plan-builder -> board-narrative-coach
3. `quarterly-review` re-runs fluency-assessment and compares to previous scorecard
4. Each skill produces an artifact that feeds the next skill in the chain
5. `fluency-assessment` stamps two fields on the scorecard: `Department:` (from Q3) and `Currency:` (from Q4). Every downstream skill (`blocker-diagnosis`, `first-use-case-picker`, `90-day-plan-builder`, `roi-calculator`, `adoption-scorecard`, `board-ai-update`, `board-narrative-coach`, `tool-stack-audit`) reads these fields — Department determines which profile to load (Engineering / Sales / Generic), Currency determines the symbol used in money references (`$` / `€` / `£` / other). When the leader picks "multiple departments" they choose a primary; the cycle runs on the primary and can be re-run for another department. When no scorecard is available, default to USD ($).

## Voice and Tone

Direct. Specific. No buzzwords. No AI hype. No consultant jargon ("digital transformation," "change management"). Calm confidence. Active voice. Short sentences. The founder is busy and stressed — respect their time. Like a founder-friendly COO, not a McKinsey deck.

## Anti-Patterns to Block

Skills must detect and resist these founder behaviors:

| Pattern | What They Say | What to Do |
|---------|--------------|------------|
| Vague self-assessment | "We're pretty early" | Force specifics: who uses what, how often, for what |
| Tool-first thinking | "Just tell me which tools to buy" | Run fluency-assessment first. Diagnosis before purchasing. |
| Strategy doc theater | "We need an AI strategy document" | Produce a narrative with numbers, not a slide deck |
| Delegation without definition | "Our CTO will handle it" | Name specific owners for specific actions |
| One-and-done | "We tried it and it didn't work" | Dig in: who tried what, for how long, what specifically failed |
| Big bang rollout | "We'll roll it out to everyone" | Start small. Highest-probability-of-success use case first. |

## Skill Types

- **Component skills** (templates, 10-30 min) — produce a specific deliverable
- **Interactive skills** (guided conversations, 30-90 min) — collaborative diagnosis and planning
- **Workflow skills** (multi-step, days/weeks) — orchestrate multiple skills in sequence

## Available Skills

### Entry Point
- `using-playbook` — routes to the right skill based on context and assessment status

### Component (templates)
- `adoption-scorecard` — maps team/role to current AI tool usage with specifics
- `board-ai-update` — board-ready narrative template with required numbers
- `tool-stack-audit` — what you pay for vs. what gets used, waste calculation
- `roi-calculator` — quantify impact in board terms with formulas

### Interactive (guided conversations)
- `fluency-assessment` — Stage 1 entry point: diagnostic across three pillars (MUST run first)
- `reporting-readiness-assessment` — Stage 2 diagnostic: outcome rigor, risk posture, board defensibility. Runs after fluency-assessment when Integration ≥ 3/5.
- `blocker-diagnosis` — deep dive on what's stuck and why, per pillar
- `first-use-case-picker` — choose where to start for maximum visible wins in 2-4 weeks
- `90-day-plan-builder` — phased rollout with board-cycle milestones and named owners
- `board-narrative-coach` — rehearse with a skeptical VC, then draft the update

### Workflow (multi-step)
- `full-adoption-cycle` — end-to-end: assessment -> diagnosis -> use case -> plan -> narrative
- `quarterly-review` — re-assess, compare to last quarter, generate board update

## Skill Conventions

- Interactive skills ask ONE question at a time. Multiple choice when possible.
- Skills produce artifacts the founder can actually use (board decks, plans, scorecards)
- Never promise specific ROI numbers — help founders calculate their own
- Always ground advice in the three pillars
- Quantify impact in board-relevant terms (runway, velocity, retention, revenue)
- Every skill has a Flow digraph, Anti-Patterns section, and defined Output format

## Directory Structure

```
skills/
  <skill-name>/
    SKILL.md           # Main skill file (required)
    supporting-file.*  # Only if needed (scripts, templates)
docs/
  BRIEFING.md          # Full framework context and design principles
CLAUDE.md              # This file
```

## Full Briefing

For complete framework context including design principles, skill file format spec, and build process, see `docs/BRIEFING.md`.
