---
name: tool-stack-audit
description: Use when a founder wants to evaluate their current AI tools — identify overlap, waste, gaps, and whether tools match actual use cases
---

# Tool Stack Audit

## Purpose

Structured audit of a team's AI tools: what they have, what's used, what's wasted, and what's missing. Produces a clear inventory with cost analysis. This is an audit, not a shopping list — it evaluates what exists before recommending changes.

**Core principle:** Audit what you have before buying what you don't. Most teams have more tools than they use and more overlap than they realize.

## Process

<HARD-GATE>
1. Audit existing tools first. Do NOT recommend new tools until the current stack is assessed.
2. Use actual usage data, not what tools are "supposed to" do.
3. Categorize every tool: keep, consolidate, or cut. No tool stays uncategorized.
4. Flag shadow IT (individual subscriptions) as a cost and governance risk.
5. Do NOT recommend specific vendor products. Recommend capabilities the team needs.
</HARD-GATE>

### Required Inputs

- **Tool list:** Every AI tool the team pays for (team licenses and individual subscriptions)
- **Per tool:** Cost, number of seats, who uses it, what for, how often
- **Overlap:** Any tools that do similar things
- **Gaps:** Tasks where people want AI help but don't have a tool

### Audit Criteria

Evaluate each tool against four questions:

| Question | What you're looking for |
|----------|------------------------|
| **Is it used?** | Weekly active users vs. seats paid for |
| **Is it the right tool for the job?** | Does it match the actual use case, or was it bought for a different purpose? |
| **Does it overlap with another tool?** | Two tools doing the same thing = one should go |
| **Is it governed?** | Does the company control the account, or is it an individual subscription? |

## Output

Produce the audit in this exact format:

```
## AI Tool Stack Audit
**Company:** [name] | **Team:** [size] | **Date:** [date]

### Current Stack

| Tool | Cost/Month | Seats | Weekly Users | Utilization | Primary Use |
|------|:---------:|:-----:|:-----------:|:-----------:|-------------|
| [Tool 1] | $[X] | [X] | [X] | [X]% | [use case] |
| [Tool 2] | $[X] | [X] | [X] | [X]% | [use case] |
| Individual subs (estimated) | $[X] | [X] | [X] | — | Various |
| **Total** | **$[X]** | | | | |

### Assessment

| Tool | Verdict | Reason |
|------|---------|--------|
| [Tool 1] | Keep / Consolidate / Cut | [One sentence] |
| [Tool 2] | Keep / Consolidate / Cut | [One sentence] |

### Overlap Found
[List any tools with overlapping capabilities and which one to keep, with reasoning.]

### Waste Identified
- Unused seats: [X] seats across [X] tools = $[X]/month wasted
- Redundant tools: [list] = $[X]/month overlap
- **Total recoverable spend: $[X]/month ($[X]/year)**

### Gaps
[Capabilities the team needs but doesn't have — described as needs, not product recommendations.
E.g., "No AI assistance for code review" not "Should buy CodeRabbit."]

### Shadow IT Risk
[Individual subscriptions outside company control: estimated count, estimated cost, governance concern.]

### Summary
[2-3 sentences: total spend, utilization rate, main action — keep/consolidate/cut.]
```

## Anti-Patterns

### The Shopping List
**Symptom:** Audit becomes a recommendation to buy 3 new tools.
**Consequence:** Founder spends more before fixing what they have. Tool sprawl gets worse.
**Fix:** Audit first, fully. Only identify gaps as capabilities needed, not products to buy.

### Ignoring Shadow IT
**Symptom:** Audit only covers company-paid tools.
**Consequence:** Missing 20-40% of actual AI spend. No visibility into what engineers are actually using.
**Fix:** Always ask about individual subscriptions and expense reports.

### Recommending Specific Vendors
**Symptom:** "You should switch to Cursor" or "Try Sourcegraph Cody."
**Consequence:** Recommendation ages badly (tools change fast), may not fit team's needs.
**Fix:** Describe the capability gap. "Your team needs AI-assisted code review that integrates with your PR workflow." Let the founder evaluate vendors.

## References

- `adoption-scorecard` — provides usage data that feeds the utilization column
- `roi-calculator` — uses cost data from this audit
- `first-use-case-picker` — gaps found here inform which use cases to pursue
