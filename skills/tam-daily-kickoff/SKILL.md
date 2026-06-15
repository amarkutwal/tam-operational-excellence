---
name: tam-daily-kickoff
display_name: TAM Daily Kickoff
trigger: "daily kickoff, morning briefing, start my day, what do I need to focus on today"
icon: "☀️"
description: "Start your day with a clear picture of what needs attention across all your customers. Pulls emails, tickets, health events, spend data, and generates a prioritized daily briefing with SSP milestone mapping."
---

# TAM Daily Kickoff

## Overview
Start your day with a clear, actionable picture of what needs attention across all customers. Pulls emails, cases, calendar, health events, and Slack activity, then generates a prioritized daily briefing with SSP milestone mapping and time estimates. Designed to run either on-demand or as a scheduled morning agent (8:00 AM).

## Customer Roster
_Maintainable list — update when customers are added/removed._

| Customer | Domains | Partner Rules | Cadence |
|----------|---------|---------------|---------|
| ReBound (Cycleon) | cycleon.com | None | 1st Thursday 11:00 AM |
| BlockTech B.V. | block-tech.io | None | TBD |
| Vopak | vopak.com, inqdo.com | DO NOT share cost numbers (partner-resold via InQdo) | TBD |
| Allied Publicity (APS Group) | theapsgroup.com | None | TBD |
| P&V Assurances | pv-assurances.be | Pending assignment | TBD |
| Yenlo Cloud Services | yenlo.com | Fresh start | TBD |

## Workflow

### Step 1: Determine Lookback Window (~30 seconds)
- **Mode**: `deterministic`
- **Input**: Current date/day of week
- **Output**: Lookback hours (24 or 72)
- **Validate**: Monday = 72hrs, Tue-Fri = 24hrs
- **On failure**: Default to 24 hours

Logic:
- **Weekdays (Tue-Fri)**: Last 24 hours
- **Mondays**: Last 72 hours (covers Saturday-Monday)

### Step 2: Email Scan (~2 minutes)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`
- **Input**: Customer domains from roster, lookback window
- **Output**: Email summary table by customer
- **Validate**: Results grouped by customer
- **On failure**: If Outlook MCP is unavailable, note "⚠️ Email data unavailable — check manually" and proceed

Search for emails from customer domains listed above within the lookback window. Also search for "Case Summary Report" email — filter cases for PRIMARY customers only (exclude backup coverage).

### Step 3: Calendar Check (~1 minute)
- **Mode**: `deterministic`
- **Tool**: Outlook `calendar_events`
- **Input**: Today's date
- **Output**: Meeting list with customer flags
- **Validate**: Events returned for today
- **On failure**: Note calendar unavailable, proceed

Flag any cadence calls, customer meetings, or internal syncs. For cadence calls today: note to run tam-cadence-call-prep before that meeting.

### Step 4: Slack Activity (~1 minute)
- **Mode**: `agentic`
- **Tool**: Slack `search_messages`
- **Input**: Customer names/domains, lookback window
- **Output**: Key Slack mentions and DMs
- **Validate**: Search returns results or empty set
- **On failure**: If Slack is unavailable, note it and proceed

Search for customer mentions in relevant channels. Check DMs from account team members (AM, SA, ESM).

### Step 5: Health Events & Cases (~1 minute)
- **Mode**: `agentic`
- **Tool**: Knowledge Graph `kg_search`
- **Input**: Customer names
- **Output**: Active cases and health events
- **Validate**: Results contain case/health data or confirmed empty
- **On failure**: Note data gap

Check for active AWS Health events affecting customer accounts. Review open support cases — severity, age, last update. Flag any Sev-1 or Sev-2 cases that need immediate attention.

### Step 6: Action Items Review (~1 minute)
- **Mode**: `agentic`
- **Input**: Previous cadence notes, email follow-ups
- **Output**: Overdue and due-today items
- **Validate**: Items have dates and owners
- **On failure**: Note if no historical data available

Check for overdue action items from previous cadence calls. Review any pending follow-ups from emails/Slack.

### Step 7: Generate Prioritized Briefing (~2 minutes)
- **Mode**: `agentic`
- **Input**: All data from Steps 2-6
- **Output**: Categorized action list with time estimates
- **Validate**: Each item has customer, action, and time estimate

Categorize all items into:
- **🔴 MUST DO** (blocking, time-sensitive, customer-impacting): Sev-1/2 cases, escalations, meetings today, overdue items
- **🟡 SHOULD DO** (important, not urgent): Case follow-ups, email responses, SSP work, proactive outreach
- **🟢 PROACTIVE** (value-add, can be deferred): Cost optimization suggestions, documentation, internal projects

### Step 8: SSP Milestone Mapping
- **Mode**: `agentic`
- **Input**: Customer-specific actions from Step 7
- **Output**: Mapping table linking actions to SSP milestones and WA pillars
- **Validate**: Only customer-specific items mapped (no internal projects)
- **On failure**: Skip mapping if no SSP data available

Map each CUSTOMER-SPECIFIC action to relevant SSP milestone and Well-Architected pillar. **Exclude**: Internal projects, certifications, team meetings, presentations.

## Output

```markdown
# ☀️ Daily Kickoff — [Date]

## 📧 Email Summary
| Customer | Emails | Key Topics | Action Needed |
|----------|--------|------------|---------------|

## 🎫 Support Cases
| Customer | Case ID | Severity | Age | Status | Action |
|----------|---------|----------|-----|--------|--------|

## 📅 Today's Calendar
| Time | Meeting | Customer | Prep Needed |
|------|---------|----------|-------------|

## ⚠️ Health Events
| Customer | Event | Impact | Action |
|----------|-------|--------|--------|

## 📋 Prioritized Actions
### 🔴 MUST DO (est. X min)
1. [Action] — Customer — [time est]

### 🟡 SHOULD DO (est. X min)
1. [Action] — Customer — [time est]

### 🟢 PROACTIVE (est. X min)
1. [Action] — Customer — [time est]

## 🎯 SSP Milestone Mapping
| Action | Customer | SSP Milestone | WA Pillar |
|--------|----------|---------------|-----------|

## ⏰ Time Budget
- Available today: X hours (after meetings)
- Allocated: X hours
- Buffer: X minutes
```

## Lessons Learned

### Do
- Always check day of week first to set correct lookback window
- Surface data gaps explicitly rather than failing silently
- Keep total execution under 8 minutes
- When run as a scheduled agent, publish to activity feed

### Don't
- Don't include cases for backup coverage customers — primary only
- Don't map internal projects to SSP milestones (SSPs are customer-specific)
- Don't guess at data — if a source is unavailable, say so

### Common Failures
- Outlook MCP may be unavailable — always have fallback path
- Case Summary Report email may not arrive daily — check manually if missing
- Slack search may return noise — filter by relevant channels

### When to Ask the User
- If no data is available from any source, confirm before generating empty briefing
- If a new customer appears in email that's not in the roster, ask if they should be added