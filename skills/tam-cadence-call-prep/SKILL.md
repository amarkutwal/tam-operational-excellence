---
name: tam-cadence-call-prep
display_name: TAM Cadence Call Prep
trigger: "cadence prep, prepare for cadence call, prep for meeting with, get ready for customer call"
icon: "📞"
description: "Prepare for a customer cadence call in under 5 minutes with a complete briefing: open cases, recent activity, SSP progress, health events, and talking points."
---

# TAM Cadence Call Prep

## Overview
Prepare for a customer cadence call in under 5 minutes. Produces a presentable one-pager with open cases, recent activity, SSP progress, health events, cost trends, and talking points. Can auto-detect the customer from today's calendar.

## Customer Context
_Used for auto-detection and data filtering._

| Customer | Domains | Partner | Cost Sharing |
|----------|---------|---------|-------------|
| ReBound (Cycleon) | cycleon.com | None | ✅ OK |
| BlockTech B.V. | block-tech.io | None | ✅ OK |
| Vopak | vopak.com, inqdo.com | InQdo | ❌ NEVER share cost/spend numbers |
| Allied Publicity (APS Group) | theapsgroup.com | None | ✅ OK |

## Workflow

### Step 1: Identify Customer
- **Mode**: `agentic`
- **Tool**: Outlook `calendar_events`
- **Input**: User request or today's calendar
- **Output**: Confirmed customer name
- **Validate**: Customer matches roster
- **On failure**: Ask user to specify customer

If user specifies customer → use that. If user says "prep for my next cadence": check today/tomorrow for cadence meetings, match against roster, confirm with user.

### Step 2: Pull Support Cases (~1 minute)
- **Mode**: `agentic`
- **Tool**: Knowledge Graph `kg_search`, Outlook `email_search`
- **Input**: Customer name
- **Output**: Case table organized by severity
- **Validate**: Cases have severity, age, status
- **On failure**: Note if case data unavailable

Search for "Case Summary Report" for latest data. Highlight: Sev-1/2, cases open >14 days, cases with no update >5 days.

### Step 3: Recent Communications (~1 minute)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`, Slack `search_messages`, Knowledge Graph `kg_search`
- **Input**: Customer domains, last 2 weeks
- **Output**: Key topics, commitments, questions
- **Validate**: Results cover meaningful exchanges
- **On failure**: Use available sources

### Step 4: Previous Cadence Notes (~30 seconds)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`, Knowledge Graph `kg_search`
- **Input**: Customer name + "cadence" or "meeting notes"
- **Output**: Action items from last call with completion status
- **Validate**: Items have owners and dates
- **On failure**: Note "No previous cadence notes found"

### Step 5: Health Events & Advisories
- **Mode**: `agentic`
- **Input**: Customer accounts
- **Output**: Active health events and maintenance windows
- **Validate**: Events are current (not expired)

### Step 6: SSP Progress
- **Mode**: `agentic`
- **Input**: Customer SSP data
- **Output**: Milestone status table
- **Validate**: Milestones have status and due dates

Review active milestones, flag those due in next 30 days, note blocked items.

### Step 7: Cost Overview
- **Mode**: `agentic`
- **Input**: Customer name + partner status
- **Output**: Cost summary OR skip notice
- **Validate**: Partner-resold check applied correctly

**⚠️ CRITICAL: If customer is partner-resold (Vopak), SKIP THIS SECTION ENTIRELY. Do not mention any dollar amounts, spend figures, or cost trends.**

For direct customers: MoM spend trend, top services, anomalies, SP/RI expiration.

### Step 8: Generate Talking Points
- **Mode**: `agentic`
- **Input**: All gathered data
- **Output**: 3-5 talking points marked as "VERIFY BEFORE USE"
- **Validate**: Points are specific (not generic), sourced from data

Lead with wins → address open items → proactive recommendations. **Mark all as AI suggestions requiring verification.**

## Output

```markdown
# 📞 Cadence Prep — [Customer Name]
**Date**: [Date] | **Time**: [Time] | **Attendees**: [if known]

## 🎫 Open Cases ([count])
| Case ID | Severity | Subject | Age | Status | Action Needed |
|---------|----------|---------|-----|--------|---------------|

## 📧 Recent Activity (last 2 weeks)
| Date | Channel | Topic | Key Point |
|------|---------|-------|-----------|

## ✅ Action Items from Last Cadence
| # | Item | Owner | Status |
|---|------|-------|--------|

## ⚠️ Health Events
- [Event details or "None active"]

## 🎯 SSP Progress
| Milestone | Status | Due | Notes |
|-----------|--------|-----|-------|

## 💰 Cost Overview
[For direct customers only — OMIT ENTIRELY for Vopak/partner-resold]

## 💬 Suggested Talking Points (⚠️ VERIFY BEFORE USE)
1. [Positive lead]
2. [Open item]
3. [Proactive suggestion]
```

## Lessons Learned

### Do
- Run 15-30 minutes before the call
- For Vopak: InQdo manages pricing — NEVER mention dollar amounts, spend, or cost data
- Note gaps in data rather than guessing

### Don't
- Don't present AI-generated talking points as fact — always mark for verification
- Don't include cost data for partner-resold customers under any circumstance
- Don't skip the previous cadence notes — continuity matters

### Common Failures
- Previous cadence notes may not exist for new customers — acknowledge and move on
- Case Summary Report may be stale (>24hrs old) — note the timestamp

### When to Ask the User
- If multiple cadence calls today, ask which one to prep for
- If customer not in roster, confirm before proceeding