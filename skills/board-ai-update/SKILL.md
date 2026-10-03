---
user-invocable: true
name: board-ai-update
description: Use when a founder needs to draft the AI section of a board update and already has results data — produces the formatted update, not the rehearsal
argument-hint: "<scorecard / plan / results file or pasted text>"
---

# Board AI Update

## Purpose

Template for the AI section of a board update. Takes results data and produces a tight, number-filled narrative. This is the template — `board-narrative-coach` is the skill that rehearses and pressure-tests before drafting.

**Core principle:** Every paragraph has a number. No number, no paragraph.

**Important:** This skill helps leaders calculate and present their own numbers — it does not audit or guarantee them. Figures going to a board, CFO, or investor should be validated by the company's finance owner first.

## Context Intake

> Unfamiliar `~~category` placeholders? See [CONNECTORS.md](../../CONNECTORS.md) for connected-tool categories.

Accept the input artifact in any form: a file path, pasted text, an attachment, or output from a skill run earlier in this conversation. If `~~cloud storage` is connected, offer to fetch it from there.

If no artifact is provided: this skill builds on the fluency scorecard — offer to run `fluency-assessment` first, or proceed with the leader's verbal answers, clearly marking the output as based on self-reported data.

For `Department:` and `Currency:`, use the first available source: the scorecard → `adoption.local.md` (the department this run covers; by default the one marked `(primary)` — see CLAUDE.md Local Configuration) → ask the leader (currency defaults to USD). If the config lists multiple departments or `whole org` and no scorecard pins this run to one, confirm which department (or org-wide/Generic) before producing numbers.

## Process

<HARD-GATE>
1. Every paragraph must contain at least one specific number.
2. No AI buzzwords: "leveraging," "transformative," "cutting-edge," "digital transformation," "game-changing."
3. Active voice, short sentences. Write like a founder, not a consultant.
4. Do NOT inflate or hedge. If the number is small, own it. Boards trust founders who are honest about early results.
5. Only include claims the founder can defend if questioned.
6. When an exposure section is included, its counts must reconcile. The active total equals the sum of the per-function active column, and the attention total equals the sum of the attention column. If they do not, say so rather than printing both. (No register, no exposure section, and this gate does not apply.)
</HARD-GATE>

### Required Inputs

- **What was done:** Initiative name, participants, timeframe
- **Results:** Adoption rate, hours saved, cost, quality signals
- **Plan:** Next use case, timeline, owner, target metric
- **Risks:** What's not working yet (optional but recommended for skeptical boards)
- **Killed pilots:** Pilots stopped this quarter, with cost / reason / lesson (optional but a credibility-boost for skeptical boards)
- **Exposure register:** Output from `ai-exposure-register` (optional — omit the exposure section entirely if no register exists)

### Status Convention

Every metric and every use case in a board update carries a status. Use this five-state convention — CFO-native, against plan, not against zero:

| Status | Use when | Notes |
|--------|----------|-------|
| `above plan` | Outcome exceeds the target set at start of quarter | A use case can be "above plan" while still being a small absolute number. The plan is the bar. |
| `on plan` | Outcome meets target within ±10% | The healthy default. |
| `below plan` | Outcome misses target | Surface the reason. Below-plan is OK if you can explain it. |
| `pilot` | Use case is in pilot phase, not yet measured against a plan | Don't conflate "we're trying it" with "we're meeting targets." |
| `measuring` | Use case has results but attribution is still being verified | Used for revenue impact pending an incrementality test, or hours saved pending objective measurement. |

### Review Status Convention

Records in an exposure register carry a *maintenance* status — whether the record is current, not how it is performing:

| Status | Use when |
|--------|----------|
| `verified` | An accountable owner confirmed the record this quarter |
| `review due` | Something material changed, or the record is older than the 90-day review window |
| `action needed` | No owner, or acting without approval on sensitive data, or the output materially affects a person's access to a job, credit, housing, or a service |

**The two conventions are not interchangeable.** Outcome Status has five states and measures performance against plan. Review Status has three and measures whether a record can be trusted. A use case can be `above plan` and `action needed` at the same time. Never substitute one for the other and never merge them into a single column.

**Rules:**
- Status reflects against plan, not against zero. A use case can be "below plan" while still saving money.
- All-green reads as too rosy. Real reports have mixed status. Aim for 5 above/on plan, 2 below or measuring.
- No traffic-light colors in the markdown output. Use the pill labels above as inline backticked code (e.g., `` `above plan` ``).
- No emoji as status indicators.

## Output

Produce the board update in this exact format:

```
## Board AI Update — [Quarter/Date]
**Company:** [name]

### What We Did
[1 paragraph. What was the initiative, who participated, what timeframe.
Must include: number of team members (use department-specific noun: engineers, reps, marketers, etc.), the specific use case, the duration.]

### What Happened
[1 paragraph. Results with specific numbers.
Must include: adoption rate, hours saved or cost avoided, quality signal, tool cost.
ROI calculation if the numbers support it.
Each headline metric should carry a status pill (`above plan` / `on plan` / `below plan` / `pilot` / `measuring`). See Status Convention above.]

### What's Next
[1 paragraph. Forward-looking plan.
Must include: next use case, timeline, named owner, target metric for next quarter.]

---
*Generated by [AI Adoption Playbook](https://github.com/adimango/ai-adoption-playbook) v1.3.0 on [YYYY-MM-DD]*
```

**Optional sections.** When included, they go above the footer line in this order: AI Exposure and Governance, then Risks and Honest Assessment, then Killed Pilots.

**If an exposure register exists, add:**

```
### AI Exposure and Governance
[Counts: active use cases, need attention, can take actions, touch personal data.
Per-function table with active / attention / key exposure / review status.
Exceptions this quarter, each with a named owner and a due date.
State that the register is self-declared, not discovered, with its last-confirmed date.
Report seats granted and use cases running as two separate numbers. A rollout to
200 people is one capability grant, not one use case — and the count of what has
been built inside it is the number that carries exposure. Never let a seat count
stand in for a use case count.
Do not present the "can take actions" count as a risk ranking — name the
highest-consequence exposure explicitly instead.
If a `reporting-readiness-assessment` has been run, add its high-risk
classification count and audit-ready count here, attributed to that assessment.
Omit those two counts if it has not — the register records what use cases do,
it does not assign risk tiers, and inventing the numbers is the failure this
section exists to prevent.
Omit the whole section if no register exists — do not fabricate.]
```

**For skeptical boards, add:**

```
### Risks and Honest Assessment
[2-3 sentences. What's not working yet, what you're watching.
Shows self-awareness. Boards trust founders who name their own risks.]

### Killed Pilots This Quarter
[1-3 pilots that were stopped, with cost invested, why killed, and lesson learned.
This is the strongest credibility move. Boards trust founders who disclose failures.
If no pilots were killed, omit this section — don't fabricate.]
```

### Format Variations

Adapt to what the board expects:

| Board preference | Adjustment |
|-----------------|------------|
| Data-heavy | Add a metrics table between "What Happened" and "What's Next" |
| Narrative | Keep as-is, one paragraph per section |
| Slides | Convert each section to a slide title + 3-4 bullet points |
| Brief mention | Compress to 2-3 sentences total, lead with the strongest number |

## Anti-Patterns

### The Buzzword Update
**Symptom:** "We are leveraging AI to transform our development workflow and drive innovation across the organization."
**Consequence:** Board learns nothing. Founder sounds like they're reading a press release.
**Fix:** Replace with specifics. Engineering example: "8 engineers used AI code review for 2 months. 6 kept using it. They save about 6 hours per week combined. Tool costs $800/month." Sales example: "12 AEs used AI for proposal drafts for 8 weeks. 10 kept using it. They save about 4 hours per week each. Tool costs €1,200/month." (Substitute the currency from the scorecard — examples above are illustrative.)

### The Apology Tour
**Symptom:** Update is mostly about what didn't work, framed defensively.
**Consequence:** Board loses confidence. Founder sounds uncertain.
**Fix:** Lead with what you did and what happened. Put risks in their own section, framed as self-awareness, not failure.

### Numbers Without Context
**Symptom:** "Saved 24 hours per month" with no reference point.
**Consequence:** Board can't evaluate if that's good or bad.
**Fix:** Always provide context. "24 hours/month across 6 team members — about 4 hours each, or 30 minutes per day. Tool costs [CCY]800/month, which is [CCY]33 per hour of capacity recovered."

## Department Profiles

Use the relevant profile to choose nouns, example numbers, and quality signals in the output.

### Engineering

- Headcount noun: "engineers"
- Use case examples: AI code review, test generation, PR descriptions, doc drafts, debugging
- Quality signals: cycle time, bug rate, PR throughput, review turnaround
- ROI framing: hours saved on code writing/review/testing/docs; faster feature shipping

### Sales

- Headcount noun: "reps" (or "AEs," "SDRs" — match the team)
- Use case examples: AI-drafted prospecting, meeting summary + CRM auto-update, proposal first draft, pipeline scoring, call coaching
- Quality signals: deal cycle length, outreach volume, CRM data entry time, proposal turnaround
- ROI framing: hours saved on CRM/email/meeting prep; shorter cycles; higher outreach volume

### Generic

- Headcount noun: "team members" (or the team's own role label)
- Use case examples: draft generation, summarization, research, data analysis
- Quality signals: throughput, turnaround time, error rate, response time
- ROI framing: hours saved on repetitive drafting/summarizing; faster turnaround on recurring work

## References

- `board-narrative-coach` — rehearses the founder with hard questions before drafting; uses this template for the final output
- `roi-calculator` — provides the numbers for the "What Happened" section
- `adoption-scorecard` — provides the adoption data
- `ai-exposure-register` — provides the counts, per-function rollup, and exceptions for the AI Exposure and Governance section
