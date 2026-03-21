---
name: adoption-scorecard
description: Use when a founder needs a quick snapshot of current AI adoption status for a board deck, leadership update, or progress check — not a diagnostic, just the numbers
---

# Adoption Scorecard

## Purpose

Produces a one-page adoption snapshot with hard numbers — who's using what, how often, and what's changed. This is a measurement tool, not a diagnostic. It reports the current state without analyzing why or recommending what to do next.

**Core principle:** Adoption is behavior change, not tool access. This scorecard measures what people actually do, not what licenses they have.

## Process

<HARD-GATE>
1. Report numbers only. No diagnosis, no recommendations, no action items.
2. Distinguish access (has a license) from usage (uses it regularly) from adoption (work has actually changed).
3. Use the founder's actual data. If data is missing, show the gap — don't estimate.
4. Every metric must be specific: "12 of 30 engineers" not "strong adoption."
5. The scorecard IS the output. Do not add follow-up lists, next steps, or guidance after the scorecard template. If data is missing, the [DATA NEEDED] markers in the scorecard are sufficient.
</HARD-GATE>

### Required Inputs

If not available from prior skills, ask for:

- **Team size:** Total engineers, total non-engineering staff
- **Tools in use:** Which AI tools, how many seats each
- **Usage data:** Who uses each tool, how often (daily/weekly/rarely/never)
- **Use cases:** What tasks are people using AI for
- **Comparison point:** Any prior scorecard or baseline to compare against

### Three Levels of Measurement

| Level | What it means | How to count |
|-------|--------------|--------------|
| **Access** | Has a license or account | Count of provisioned seats |
| **Usage** | Opens the tool at least weekly | Count from admin dashboard or founder estimate |
| **Adoption** | Work has visibly changed — tasks start differently, output is different | Count of people whose workflow has shifted |

Most founders report access as if it were adoption. This scorecard separates the three so the board sees reality.

## Output

Produce the scorecard in this exact format:

```
## AI Adoption Scorecard
**Company:** [name] | **Team:** [size] | **Date:** [date]
**Previous scorecard:** [date or "first measurement"]

### Adoption at a Glance

| Metric | Count | % of Team |
|--------|:-----:|:---------:|
| Team size (engineering) | [X] | 100% |
| Have AI tool access | [X] | [X]% |
| Use AI tools weekly | [X] | [X]% |
| Work has visibly changed | [X] | [X]% |

### Tool Breakdown

| Tool | Seats | Weekly Users | Primary Use Case | Cost/Month |
|------|:-----:|:------------:|-----------------|:----------:|
| [Tool 1] | [X] | [X] | [use case] | $[X] |
| [Tool 2] | [X] | [X] | [use case] | $[X] |
| **Total** | **[X]** | **[X]** | | **$[X]** |

### Unused Capacity
- [X] seats provisioned but not used weekly ($[X]/month)
- [Tools or use cases attempted and abandoned, if any]

### Adoption by Role
| Role | Total | Using AI Weekly | Notes |
|------|:-----:|:---------------:|-------|
| Senior engineers | [X] | [X] | |
| Mid-level engineers | [X] | [X] | |
| Junior engineers | [X] | [X] | |
| Engineering managers | [X] | [X] | |
| Non-engineering | [X] | [X] | |

### Use Case Coverage
| Workflow Stage | AI Used? | Tool | Who |
|---------------|:--------:|------|-----|
| Writing code | [yes/no] | | |
| Code review | [yes/no] | | |
| Testing | [yes/no] | | |
| Documentation | [yes/no] | | |
| Debugging | [yes/no] | | |
| Planning/architecture | [yes/no] | | |

### Change Since Last Measurement
[If prior scorecard exists: what moved, what didn't. If first measurement: "Baseline established."]

### Team Stability Note
[If team stability is not "Stable": 1-2 sentences explaining how the restructuring affects these numbers. E.g., "Sales team went from 20 to 15 after restructuring. 3 of the 5 departures were non-adopters — adoption percentage may overstate real behavior change." If team is stable, omit this section.]
```

## Anti-Patterns

### Counting Licenses as Adoption
**Symptom:** "60% of our team has Copilot" presented as adoption.
**Consequence:** Board thinks adoption is further along than it is. Reality gap grows.
**Fix:** Separate access, usage, and adoption. "60% have access, 33% use it weekly, 15% say it's changed how they work."

### Adding Recommendations
**Symptom:** Scorecard includes "next steps" or "areas for improvement."
**Consequence:** Mixes measurement with prescription. The scorecard should be a mirror, not a coach.
**Fix:** Just the numbers. Other skills handle the "what to do about it."

### Vague Qualitative Assessments
**Symptom:** "Adoption is progressing well" or "team is engaged."
**Consequence:** Means nothing. Board can't act on vibes.
**Fix:** Every cell in the scorecard is a number, a name, or a yes/no.

## References

- `fluency-assessment` — deeper diagnostic that scores fluency across three pillars
- `roi-calculator` — uses adoption data to calculate financial return
- `quarterly-review` — re-runs this scorecard and compares to previous period
