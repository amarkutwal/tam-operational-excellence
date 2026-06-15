---
name: tam-daily-focus-recommender
display_name: TAM Daily Focus Recommender
trigger: "focus recommender, what should I prioritize today, rank my customers, daily priorities"
icon: "🎯"
description: "Analyzes ALL your customers' current status, scores them by urgency, and recommends what to focus on today — proactively, not reactively. Includes time budget and TAM goal mapping."
---

# TAM Daily Focus Recommender

## Overview
Scores all customers by urgency using a weighted algorithm, then generates a time-budgeted focus plan mapped to TAM goals. Designed for the reality of managing 8-12 customers at ~8% time allocation each (3-4 hours/week per customer). Run after daily-kickoff or as a standalone morning planner.

## Customer Roster
_Update when customers change. Each customer gets ~8% time allocation = ~3.2 hrs/week = ~38 min/day._

| Customer | Allocation | Notes |
|----------|-----------|-------|
| ReBound (Cycleon) | 8% | Primary since start |
| BlockTech B.V. | 8% | HFT, bare metal, expanding Tokyo |
| Vopak | 8% | Partner-resold, no cost sharing |
| Allied Publicity (APS Group) | 8% | EKS-heavy, many projects |
| P&V Assurances | 4% | Pending — minimal until active |
| Yenlo Cloud Services | 4% | Pending — minimal until active |
| Initiatives (presentations, certs, etc.) | 20% | Protected time block |

## TAM Goal Definitions
| Goal | Description | Examples |
|------|-------------|----------|
| Customer Satisfaction | Responsive, trusted relationship | Timely replies, proactive check-ins |
| Case Resolution | Drive cases to closure efficiently | Follow-ups, escalation support |
| Proactive Engagement | Anticipate needs before they're raised | Health event alerts, EOL notices |
| SSP Delivery | Deliver milestones on schedule | Reviews, implementations, guidance |
| Cost Optimization | Help reduce waste, improve efficiency | SP/RI analysis, rightsizing |
| Operational Excellence | Improve customer's ops maturity | Automation, monitoring, IaC |
| Security | Strengthen security posture | GuardDuty, Config rules, IAM |

## Workflow

### Step 1: Gather Customer Status (~3 minutes)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`, Slack `search_messages`, Knowledge Graph `kg_search`, Outlook `calendar_events`
- **Input**: Customer roster
- **Output**: Status snapshot per customer
- **Validate**: Data collected for each active customer
- **On failure**: Use available data, note gaps

For each active customer, collect: open cases + severity, active escalations, health events, SSP milestones due this week, last contact date, cost anomalies, EOL deadlines.

### Step 2: Score Each Customer (Urgency 1-10)
- **Mode**: `agentic`
- **Input**: Status snapshot from Step 1
- **Output**: Scored and ranked customer list
- **Validate**: Each customer has a numeric score with justification

Apply scoring algorithm:
| Signal | Points | Example |
|--------|--------|---------|
| Active escalation | +5 | Customer escalated to management |
| Sev-1 or Sev-2 case | +4 | Production down, major impact |
| AWS Health event (active) | +3 | Service degradation in their region |
| Cadence call TODAY | +3 | Meeting in calendar for today |
| SSP milestone due this week | +2 | Delivery deadline approaching |
| Stale case (no update 5+ days) | +2 | Case going cold |
| No contact in 2+ weeks | +2 | Customer might feel neglected |
| Cost anomaly (>10% MoM) | +1 | Unexpected spend spike |
| EOL/EOS deadline within 30 days | +1 | Version reaching end of support |

**Score interpretation**: 0-2 Green, 3-5 Yellow, 6+ Red

### Step 3: Calculate Time Budget
- **Mode**: `agentic`
- **Tool**: Outlook `calendar_events`
- **Input**: Today's calendar, customer scores
- **Output**: Time allocation per customer + initiatives
- **Validate**: Total allocated ≤ available hours

1. Check today's calendar for blocked time (meetings, focus blocks)
2. Calculate available work hours = total hours - meetings - breaks
3. Allocate per customer based on urgency-weighted distribution:
   - Red customers: up to 2x normal allocation
   - Yellow customers: normal allocation
   - Green customers: 0.5x normal allocation (maintenance mode)
4. Reserve 20% for initiatives (unless all customers are Red)

### Step 4: Generate Focus Plan
- **Mode**: `agentic`
- **Input**: Scored customers + time budget
- **Output**: Categorized action plan

Categorize actions into:
- **🔴 MUST DO** — Time-critical, customer-blocking
- **🟡 SHOULD DO** — Important for relationship/SSP progress
- **🟢 PROACTIVE** — Value-add when time allows
- **⏸️ DEFER** — Can wait until tomorrow or next week

### Step 5: Map to TAM Goals
- **Mode**: `agentic`
- **Input**: Action plan from Step 4
- **Output**: Goal-tagged actions with distribution analysis
- **Validate**: Actions span multiple goals (not all one type)

Each action gets tagged with its primary TAM goal. Ensure distribution across goals — if all actions are "Case Resolution," look for proactive/SSP work to balance.

## Output

```markdown
# 🎯 Daily Focus — [Date]

## Customer Priority Scores
| # | Customer | Score | Level | Key Driver |
|---|----------|-------|-------|------------|
| 1 | [Name] | 8/10 | 🔴 | Sev-1 case |
| 2 | [Name] | 5/10 | 🟡 | SSP due |
| 3 | [Name] | 2/10 | 🟢 | Steady |

## ⏰ Time Budget
- Available today: X hrs (after Y hrs meetings)
- Customer work: X hrs
- Initiatives: X hrs (presentations, certs, etc.)
- Buffer: 30 min

## 📋 Focus Plan
### 🔴 MUST DO (X min total)
| # | Action | Customer | Est. | TAM Goal |
|---|--------|----------|------|----------|

### 🟡 SHOULD DO (X min total)
| # | Action | Customer | Est. | TAM Goal |
|---|--------|----------|------|----------|

### 🟢 PROACTIVE (X min total)
| # | Action | Customer | Est. | TAM Goal |
|---|--------|----------|------|----------|

### ⏸️ DEFER
- [Items that can wait]

## 🎯 TAM Goal Distribution
| Goal | Actions | Time |
|------|---------|------|

## 📊 Initiative Time Block
| Initiative | Status | Time Today |
|-----------|--------|-----------|
```

## Lessons Learned

### Do
- With 8% allocation per customer, 15 minutes of misallocation = 6% of their weekly budget wasted
- Re-run mid-day if priorities shift (new escalation, etc.)
- Include initiative work as a protected block — it's easy to let customer reactive work consume all time

### Don't
- Don't allocate 100% of time — always keep a 30-min buffer for unexpected issues
- Don't ignore Green customers entirely — at minimum, check in every 2 weeks

### Common Failures
- If total MUST DO exceeds available time, flag it — you may need to delegate or reschedule
- Calendar data may be incomplete if Outlook is unavailable

### When to Ask the User
- If all customers score Red (crisis mode), ask which to deprioritize
- If initiative time keeps getting deferred multiple days in a row, flag the pattern