---
name: roi-calculator
description: Use when a founder needs to calculate or present the ROI of AI tool adoption — typically before a board meeting or when justifying continued investment
---

# ROI Calculator

## Purpose

Produces a board-ready ROI calculation from the founder's actual data — not industry benchmarks. Separates ROI into three buckets so the founder can tell a complete story. This is a calculation tool, not a strategy session.

**Core principle:** Use the founder's real numbers. If a number is estimated, label it as estimated. Never substitute industry averages for missing data — flag the gap instead.

## Three ROI Buckets

Every AI investment produces value in one or more of these buckets:

| Bucket | What it measures | Examples |
|--------|-----------------|----------|
| **Cost efficiency** | Time saved, spend reduced | Hours saved per engineer per week, reduced contractor spend, fewer tools needed |
| **Revenue optimization** | Existing revenue protected or grown | Faster feature shipping, reduced churn from faster bug fixes, shorter sales cycles |
| **New revenue** | Revenue that wouldn't exist without AI | AI-powered product features, new service offerings, markets entered faster |

Most early-stage AI adoption lives in bucket 1. That's fine — but naming all three buckets shows the board you're thinking beyond cost cutting.

## Process

<HARD-GATE>
1. Use only numbers the founder provides. Never invent or assume data.
2. Label every estimated number as "(estimated)" in the output.
3. Do NOT recommend tools, processes, or strategy changes. Calculate only.
4. Always show the math. The board will ask "how did you get that number?"
5. If critical data is missing, say what's missing and what it would change — don't fill the gap with benchmarks.
</HARD-GATE>

### Required Inputs

Ask for these if not already available from prior skills:

- **Tool costs:** Monthly spend per tool, number of seats
- **Team costs:** Fully loaded cost per engineer (or average)
- **Usage data:** How many people use each tool, how often
- **Time savings:** Hours saved per person per week (self-reported is fine, label it)
- **Quality signals:** Any measurable change in output (cycle time, bug rate, PR throughput)

### Calculation Method

**Cost efficiency ROI:**
```
Annual tool cost = (seats × price/seat × 12)
Annual time value saved = (active users × hours saved/week × 50 weeks × hourly rate)
Cost efficiency ROI = (time value saved - tool cost) / tool cost × 100
```

**Important notes for the founder:**
- Time saved ≠ money saved unless it translates to shipping more or hiring fewer. Frame it as "capacity recovered" — the team gets X hours back per week.
- If time savings are self-reported, say so. Boards respect honesty more than inflated numbers.

**Revenue optimization and new revenue:** These require founder-specific data. If the founder has revenue impact data, include it. If not, note the bucket as "not yet measured" — don't estimate.

## Anti-Patterns

### Inflating with Industry Benchmarks
**Symptom:** "GitHub research shows 25-30% productivity improvement" used as the basis for ROI.
**Consequence:** Board asks one follow-up question and the number falls apart.
**Fix:** Use only this team's data. If they don't have productivity data, say "we measured time savings of X hours/week (self-reported)" — not "industry benchmarks suggest."

### Counting Unused Seats as Investment
**Symptom:** ROI denominator includes all seats, but only half are used.
**Consequence:** ROI looks lower than it is, and the real problem (unused seats) gets hidden.
**Fix:** Calculate ROI on active users separately. Show unused seat cost as waste to address.

### Ignoring the "Compared to What" Question
**Symptom:** ROI shows AI tools save money vs. doing nothing.
**Consequence:** Board asks "what else could we spend $10K/year on?" and founder has no answer.
**Fix:** Include the cost-per-engineer-per-month and let the board compare to other investments.

### Watermelon Numbers
**Symptom:** A metric looks green — "95% of engineers have Copilot" — but the underlying reality hasn't changed. Access ≠ usage ≠ adoption.
**Consequence:** Board thinks adoption is working. Next quarter the numbers don't move and credibility takes a hit.
**Fix:** If the founder's data shows high access but low usage, flag it: "This number measures access, not behavior. The board will ask what people actually do with it."

### Cobra Numbers
**Symptom:** A metric becomes a target and people optimize the number instead of the outcome — e.g., team accepts every AI suggestion to hit "AI-assisted commits" while code quality drops.
**Consequence:** The metric improves, the goal doesn't. Board eventually notices.
**Fix:** Pair every activity metric with an outcome metric. If you report "AI-assisted commits," pair it with "defect rate" or "review cycle time." If they move in opposite directions, flag the tension.

### Hawthorne Numbers
**Symptom:** Usage spikes during the pilot month when everyone's watching, then drops when attention moves elsewhere.
**Consequence:** ROI calculated from the pilot month overstates the real impact.
**Fix:** If usage data covers only a monitored period, label the number in the output: "(pilot period — not yet confirmed as sustained)." The board sees it's provisional. Don't present pilot-month data as a trend.

## Output

Produce the ROI calculation in this exact format:

```
## AI Investment ROI
**Company:** [name] | **Period:** [timeframe] | **Date:** [date]

### Investment Summary
| Item | Monthly | Annual |
|------|---------|--------|
| [Tool 1] — [X] seats | $[X] | $[X] |
| [Tool 2] — [X] seats | $[X] | $[X] |
| Unused seats ([X] of [Y]) | $[X] wasted | $[X] wasted |
| **Total investment** | **$[X]** | **$[X]** |
| **Effective investment** (active seats only) | **$[X]** | **$[X]** |

### ROI by Bucket

#### 1. Cost Efficiency
- Active users: [X] of [Y] engineers
- Time saved: [X] hours/engineer/week [estimated/measured]
- Total weekly capacity recovered: [X] hours
- Value of recovered capacity: $[X]/year (at $[X]/hr fully loaded)
- **Cost efficiency ROI: [X]%**
- **Breakeven:** Tool needs to save each active user [X] minutes/day to pay for itself

#### 2. Revenue Optimization
[Specific data if available, or: "Not yet measured. To calculate: track feature shipping velocity, bug resolution time, or customer-facing cycle times before and after AI adoption."]

#### 3. New Revenue
[Specific data if available, or: "Not applicable yet. This bucket activates when AI enables product features or services that generate revenue directly."]

### The Math
[Show each calculation step so the board can verify]

### What's Missing
[List any data gaps that would strengthen the case — e.g., "Objective time measurement (current numbers are self-reported)", "Quality impact data (bug rates before/after)"]

### Board-Ready Summary
[2-3 sentences: investment amount, return, and what it means. Use only defended numbers.]
```

## References

- `board-narrative-coach` — uses this calculation in the board update narrative
- `90-day-plan-builder` — Phase 2 begins measuring ROI, Phase 3 consolidates it
- `adoption-scorecard` — provides the usage data that feeds the active user count
