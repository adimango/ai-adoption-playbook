# Connectors

## How tool references work

Skill files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~chat` might mean Slack, Microsoft Teams, or any other chat tool with an MCP server.

The playbook is **tool-agnostic** — skills describe workflows in terms of categories (chat, cloud storage, project tracker, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

Every connector is optional. Skills that use connected sources check whether the category is connected and fall back to asking the leader directly when it is not.

## Connectors for this plugin

| Category | Placeholder | Included servers | Other options | Used for |
|----------|-------------|------------------|---------------|----------|
| Chat | `~~chat` | Slack | Microsoft Teams | Real adoption signals: who actually discusses AI tools, tool-help channels, sentiment |
| Cloud storage | `~~cloud storage` | Box | Google Drive, Dropbox, SharePoint, Egnyte | Previous scorecards, plans, and board decks; saving deliverables |
| Project tracker | `~~project tracker` | Atlassian (Jira/Confluence), Linear, Asana | Monday.com | Engineering usage evidence: cycle time, ticket throughput for ROI baselines |
| CRM | `~~CRM` | HubSpot | Salesforce | Sales usage evidence: deal cycle length, activity volume for ROI baselines |
| Office suite | `~~office suite` | Microsoft 365 | Google Workspace | Exporting board updates and plans as documents |
| Knowledge base | `~~knowledge base` | Notion | Confluence, Guru | Internal AI guidelines, adoption docs, previous plans and playbooks |
| Product analytics | `~~product analytics` | PostHog | Amplitude, Mixpanel | Observed tool-usage data: active users, feature adoption for ROI evidence |

## What connectors change

With no connectors, every skill works from the leader's answers and pasted artifacts — nothing breaks. With connectors, skills replace self-reported numbers with observed ones, which is exactly what a skeptical board wants.
