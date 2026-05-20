---
name: tam-weekly-review
display_name: TAM Weekly Review
trigger: "weekly review, week in review, end of week summary, plan next week"
icon: "📊"
description: "End-of-week review to track progress on SSPs, identify trends across customers, and plan the upcoming week. Feeds into SBR preparation."
---

# TAM Weekly Review

## Overview
End-of-week review that tracks SSP progress, identifies cross-customer trends, and plans the upcoming week. Designed to run Friday afternoon and feed directly into SBR preparation. Compares this week to last week to surface patterns.

## Workflow

### Step 1: Gather Week's Data (~5 minutes)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`, Outlook `calendar_events`, Slack `search_messages`, Knowledge Graph `kg_search`
- **Input**: Current week date range (Mon-Fri)
- **Output**: Raw data: emails, meetings, cases, Slack activity
- **Validate**: Data covers full week
- **On failure**: Use available data, note gaps

Count: emails sent/received, meetings held, cases touched per customer.

### Step 2: Customer Health Scorecard
- **Mode**: `agentic`
- **Input**: Week's data from Step 1
- **Output**: Scorecard table with color-coded health per customer
- **Validate**: All active customers assessed

For each active customer, assess:
| Metric | Score Method |
|--------|-------------|
| Case Health | 🟢 No open Sev-1/2, all progressing · 🟡 Stale cases or Sev-3+ · 🔴 Sev-1/2 or escalation |
| Engagement | 🟢 Contact this week · 🟡 Contact within 2 weeks · 🔴 No contact 2+ weeks |
| SSP Progress | 🟢 On track · 🟡 At risk · 🔴 Behind schedule |
| Health Events | 🟢 None · 🟡 Informational · 🔴 Active impacting |
| Risk Level | Composite — worst score wins |

### Step 3: SSP Milestone Tracking
- **Mode**: `agentic`
- **Input**: SSP data per customer
- **Output**: Milestone status table
- **Validate**: Each milestone has a status indicator

For each customer's active SSP:
- List milestones: ✅ Complete | 🟡 In Progress | 🔴 Behind | ⏳ Not Started
- Flag milestones due in next 2 weeks
- Note blockers or dependencies

### Step 4: Week-over-Week Comparison
- **Mode**: `agentic`
- **Input**: This week's data + previous review (from memory)
- **Output**: Trend analysis
- **Validate**: Comparisons are directional (↑/↓/→)
- **On failure**: If no previous data, establish baseline

Compare: cases opened vs closed, customer contacts, escalations, time per customer vs allocation target, anomalies.

### Step 5: SBR Feed Section
- **Mode**: `agentic`
- **Input**: All data from Steps 1-4
- **Output**: Wins, Risks, Sentiment summary
- **Validate**: Concrete data points (not vague)

Prepare for next Service Business Review: key wins, risks to flag, customer sentiment trend.

### Step 6: Next Week Planning
- **Mode**: `agentic`
- **Tool**: Outlook `calendar_events`
- **Input**: Next week's calendar
- **Output**: Prioritized next-week plan
- **Validate**: Top 3 priorities identified, cadence calls listed

Identify cadence calls, plan top 3 priorities, allocate deep work blocks, flag customers needing proactive outreach.

## Output

```markdown
# 📊 Weekly Review — Week of [Date Range]

## 📈 Week at a Glance
| Metric | This Week | Last Week | Trend |
|--------|-----------|-----------|-------|
| Emails sent | X | X | ↑/↓ |
| Meetings held | X | X | ↑/↓ |
| Cases opened | X | X | ↑/↓ |
| Cases closed | X | X | ↑/↓ |
| SSP milestones delivered | X | X | ↑/↓ |

## 🏥 Customer Health Scorecard
| Customer | Cases | Engagement | SSP | Health | Overall |
|----------|-------|------------|-----|--------|---------|

## 🎯 SSP Progress
| Customer | Milestone | Status | Due | Notes |
|----------|-----------|--------|-----|-------|

## 📊 Week-over-Week Trends
- [Key observations and anomalies]

## 📋 SBR Feed
**Wins**: [List]
**Risks**: [List]
**Sentiment**: [Overview]

## 📅 Next Week Plan
### Top 3 Priorities
1. [Priority]
2. [Priority]
3. [Priority]

### Cadence Calls
| Day | Customer | Prep Status |
|-----|----------|-------------|

### Proactive Outreach Needed
- [Customers with no contact this week]

### Deep Work Blocks
| Day | Focus | Duration |
|-----|-------|----------|
```

## Lessons Learned

### Do
- Run every Friday 4:00-5:00 PM (or schedule as agent)
- Save output to memory for next week's comparison
- If a customer is consistently 🔴, escalate to ESM (Nick)

### Don't
- Don't skip the SBR feed section — it's invaluable for business reviews
- Don't count internal meetings as customer engagement

### Common Failures
- First run has no previous week for comparison — establish baseline
- Email counts may be inflated by auto-notifications — filter to meaningful exchanges

### When to Ask the User
- If a customer has been Red for 2+ consecutive weeks, ask if escalation is needed
- If SSP milestones are consistently slipping, ask about resource constraints