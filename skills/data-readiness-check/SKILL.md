---
user-invocable: true
name: data-readiness-check
description: Use when a founder has picked an AI use case and needs to check whether the underlying data is actually fit for it — before committing to a 90-day plan built on data that isn't there.
---

# Data Readiness Check

## Purpose

Structured audit of whether the data behind one specific AI use case is usable: it exists, you can get to it, it's clean enough, it reflects current reality, and you're allowed to use it. This is not a general "how's your data" health check — it's anchored to one named use case.

**Core principle:** Audit the use case's actual data needs, not data in general. A generic data-quality assessment doesn't map to a decision; this does.

## Context Intake

For `Department:` and `Currency:`, use the first available source: the current fluency scorecard → `adoption.local.md` (the department this run covers; by default the one marked `(primary)` — see CLAUDE.md Local Configuration) → ask the leader (currency defaults to USD).

## Process

<HARD-GATE>
1. Anchor every finding to the specific use case being checked — never assess "your data" in the abstract.
2. Rate all four dimensions. No dimension left unrated.
3. A "Gap" finding must name the specific fix, not just flag a problem.
4. A "Blocker" finding must explain why no near-term fix exists — reserve this rating. Most findings should land on Ready or Gap.
5. Do NOT recommend specific data tools or platforms (no "get a data warehouse," no "use Fivetran"). Describe the capability gap; let the founder evaluate tools.
6. Do NOT rubber-stamp the "allowed to use it" dimension. Explicitly ask about consent, licensing, and security constraints — "we already have this data" is not the same as "we're allowed to use it this way."
</HARD-GATE>

### Step 1: Confirm the Use Case

If arriving from `first-use-case-picker`, reference the Use Case Brief directly:

> "You picked [use case] as your first use case. Before we build a 90-day plan around it, let's check whether the data it needs actually exists and is usable."

If running standalone, ask:

> "Which specific AI use case do you want to check the data for? Be specific — not 'our customer data,' but the exact use case (e.g., 'AI-drafted renewal emails using our CRM history')."

### Step 2: Gather the Data Picture

Ask one at a time:

- **What data does it need?** "Walk me through what data this use case would need to work — what inputs does the AI need to see?"
- **Does it exist today?** "For each of those inputs, does that data exist somewhere today, or would you need to start capturing it?"
- **Where does it live, and who can get to it?** "Is it in one system you can query, or scattered across tools, spreadsheets, PDFs, or people's heads?"
- **What shape is it in?** "How clean and complete is it? Missing fields, inconsistent formats, duplicate records — any of that?"
- **How current is it?** "Does this data reflect how your team, customers, or business operates today, or is a lot of it from a period that's since changed?"
- **Any constraints on using it?** "Any legal, consent, privacy, or security rules that limit how this data can be used — especially for this specific purpose?"

### Step 3: Rate Each Dimension

Score each of the four Audit Criteria dimensions below as **Ready**, **Gap**, or **Blocker**, based on the answers gathered.

### Audit Criteria

| Question | What you're looking for |
|---|---|
| **Do you have it, and can you get to it?** | Captured today, in one queryable place — or scattered across systems, PDFs, or people's heads |
| **Is it usable as-is?** | Clean, consistent, complete enough to feed a model — or needs real cleanup first |
| **Does it represent reality?** | Reflects who you serve and how you operate today — or stale/skewed toward a changed past |
| **Are you allowed to use it?** | Any legal, consent, privacy, or security constraint on this use |

**Rating guide:**
- **Ready** — no material issue, proceed as scoped
- **Gap** — a real issue exists, but it's fixable with named, scoped work (e.g., "export and clean the CRM notes field" — not "improve data quality")
- **Blocker** — no viable near-term fix (e.g., the data was never captured and can't be reconstructed, or legal has flagged it as unusable for this purpose)

### Step 4: Determine the Overall Verdict

- **All four Ready** → "Ready to proceed"
- **Any Gap, no Blocker** → "Fixable — data-prep phase needed"
- **Any Blocker** → "Not ready — pick a different use case"

Produce the Output below, then route per the Next Skill table.

## Anti-Patterns

### The Generic Data Audit
**Symptom:** Assessing "is your data good" broadly instead of against the named use case's actual needs.
**Consequence:** Findings are too vague to act on and don't map to a real decision.
**Fix:** Always anchor every question and finding to the specific use case being checked.

### Blocker Theater
**Symptom:** Rating everything Blocker to avoid making a judgment call.
**Consequence:** Nothing ever proceeds. The founder loses trust in the check and stops using it.
**Fix:** Blocker means no viable near-term fix exists. Most findings should land on Ready or Gap — reserve Blocker for genuine dead ends.

### Recommending Specific Data Tools
**Symptom:** "You need a Fivetran pipeline" or "get a data warehouse."
**Consequence:** Vendor-specific advice ages badly and isn't this skill's job — same failure mode `tool-stack-audit` blocks for AI tools.
**Fix:** Describe the capability gap ("you need a way to consolidate CRM and support-ticket data into one queryable place"), not a product. Let the founder evaluate tools.

### Skipping the Constraints Check
**Symptom:** The "allowed to use it" dimension gets rated Ready without actually checking legal, consent, or security constraints.
**Consequence:** Teams build on data they can't legally use this way, and discover it after the investment is made.
**Fix:** Always explicitly ask about consent, licensing, and security constraints. Having the data isn't the same as being allowed to use it for this purpose.

## Output

Produce the check in this exact format:

```
## Data Readiness Check
**Company:** [name] | **Use case:** [name] | **Date:** [date]

### Assessment

| Dimension | Rating | Finding |
|-----------|:------:|---------|
| Do you have it, and can you get to it? | Ready / Gap / Blocker | [one sentence] |
| Is it usable as-is? | Ready / Gap / Blocker | [one sentence] |
| Does it represent reality? | Ready / Gap / Blocker | [one sentence] |
| Are you allowed to use it? | Ready / Gap / Blocker | [one sentence] |

### Overall Verdict
[Ready to proceed / Fixable — data-prep phase needed / Not ready — pick a different use case]

### What This Means
[2-3 sentences translating the verdict into the concrete next action.]

---
*Generated by [AI Adoption Playbook](https://github.com/adimango/ai-adoption-playbook) v1.3.0 on [YYYY-MM-DD]*
```

## Next Skill

| Verdict | Recommended next skill | Why |
|---|---|---|
| All Ready | `90-day-plan-builder` | Data supports this use case as scoped |
| Any Gap, no Blocker | `90-day-plan-builder` | Add a data-prep Phase 0 before Phase 1, covering the named gaps |
| Any Blocker | `first-use-case-picker` | Pick a different use case — this one's data isn't there |

> "Your data readiness verdict is [verdict]. I'd recommend running [skill name] next to [one sentence]. Want to do that now?"

## Department Profiles

Use the relevant profile to recognize typical data sources and typical gaps for the team being checked.

### Engineering

**Typical data sources:** git history, CI/CD logs, ticket systems, code repositories, observability/telemetry.

**Common gaps:** telemetry not retained long enough for a useful baseline, no labeled bug/fix pairs, code and history split across many unlinked repos.

### Sales

**Typical data sources:** CRM records, call recordings/transcripts, email threads, deal history.

**Common gaps:** inconsistent CRM data entry across reps, no historical win/loss labels, call recordings not transcribed or stored anywhere queryable.

### Generic

**Typical data sources:** shared drives, email, meeting notes, internal documents.

**Common gaps:** unstructured and scattered documents, no consistent naming or metadata, tribal knowledge that was never written down anywhere.

## References

- `first-use-case-picker` — provides the use case this check runs against
- `90-day-plan-builder` — receives the verdict; a Gap-only verdict adds a Phase 0, an all-Ready verdict proceeds as normal
- `tool-stack-audit` — structural sibling; same audit-template pattern applied to tools instead of data
