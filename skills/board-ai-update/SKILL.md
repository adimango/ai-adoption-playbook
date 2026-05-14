---
name: board-ai-update
description: Use when a founder needs to draft the AI section of a board update and already has results data — produces the formatted update, not the rehearsal
---

# Board AI Update

## Purpose

Template for the AI section of a board update. Takes results data and produces a tight, number-filled narrative. This is the template — `board-narrative-coach` is the skill that rehearses and pressure-tests before drafting.

**Core principle:** Every paragraph has a number. No number, no paragraph.

## Process

<HARD-GATE>
1. Every paragraph must contain at least one specific number.
2. No AI buzzwords: "leveraging," "transformative," "cutting-edge," "digital transformation," "game-changing."
3. Active voice, short sentences. Write like a founder, not a consultant.
4. Do NOT inflate or hedge. If the number is small, own it. Boards trust founders who are honest about early results.
5. Only include claims the founder can defend if questioned.
</HARD-GATE>

### Required Inputs

- **What was done:** Initiative name, participants, timeframe
- **Results:** Adoption rate, hours saved, cost, quality signals
- **Plan:** Next use case, timeline, owner, target metric
- **Risks:** What's not working yet (optional but recommended for skeptical boards)

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
ROI calculation if the numbers support it.]

### What's Next
[1 paragraph. Forward-looking plan.
Must include: next use case, timeline, named owner, target metric for next quarter.]
```

**For skeptical boards, add:**

```
### Risks and Honest Assessment
[2-3 sentences. What's not working yet, what you're watching.
Shows self-awareness. Boards trust founders who name their own risks.]
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
**Fix:** Replace with specifics. Engineering example: "8 engineers used AI code review for 2 months. 6 kept using it. They save about 6 hours per week combined. Tool costs $800/month." Sales example: "12 AEs used AI for proposal drafts for 8 weeks. 10 kept using it. They save about 4 hours per week each. Tool costs $1,200/month."

### The Apology Tour
**Symptom:** Update is mostly about what didn't work, framed defensively.
**Consequence:** Board loses confidence. Founder sounds uncertain.
**Fix:** Lead with what you did and what happened. Put risks in their own section, framed as self-awareness, not failure.

### Numbers Without Context
**Symptom:** "Saved 24 hours per month" with no reference point.
**Consequence:** Board can't evaluate if that's good or bad.
**Fix:** Always provide context. "24 hours/month across 6 team members — about 4 hours each, or 30 minutes per day. Tool costs $800/month, which is $33 per hour of capacity recovered."

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
