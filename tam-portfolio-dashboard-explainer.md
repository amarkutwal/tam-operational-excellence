# TAM Portfolio Dashboard — Section-by-Section Explainer
## What Each Section Does & Why It Matters

**Purpose:** Quick reference for presenting the dashboard to Nick (and later at TAM Summit)
**Last Updated:** June 5, 2026

---

## 1. Data Source Status Legend (Top Banner)

**What it is:** Row of pill-shaped badges at the top showing connection status for each data source.

**Sources shown:**
- Outlook (email/calendar)
- Slack (messages)
- AWS Health (health events)
- Case Summary (support cases)
- Cost Explorer (spend data)

**Status indicators:**
- 🟢 Green = Live, data is fresh
- 🟡 Yellow = Stale (data older than expected refresh interval)
- 🔴 Red = Failed/disconnected

**Why it matters for Nick:** Proves this is a *real system* with live data feeds, not a static spreadsheet someone updates manually. Shows operational maturity — the TAM knows immediately if any data source is broken.

---

## 2. KPI Summary Cards (4 Tiles)

**What they show:**
| Card | Value | Meaning |
|------|-------|---------|
| Active Customers | 4 (+2 pending) | Current portfolio size with onboarding pipeline |
| Open Cases | 7 | Total open support cases across all customers (clickable to expand) |
| SSP Milestones Active | 12 | Number of SSP milestones currently in progress |
| Strategic Focus % | 38% | Percentage of TAM time spent on proactive/strategic work vs reactive |

**Why it matters for Nick:** One-glance portfolio health. The Strategic Focus % is the key metric — it proves the TAM spends meaningful time on proactive work (recommendations, architecture reviews, SSP delivery) and not just firefighting cases.

---

## 3. Active Escalations Card (Red-Bordered)

**What it is:** Red-bordered alert card showing any active escalation requiring immediate attention.

**Current content:** BlockTech root MFA enforcement — high severity.

**Why it matters for Nick:** Shows proactive risk management. The TAM isn't waiting for incidents — they're tracking and escalating risks *before* they become customer-impacting outages.

---

## 4. Customer Health Scorecard (Table)

**What it shows per customer:**
| Column | Description |
|--------|-------------|
| Customer | Name + tier badge (Large/Medium/Small) |
| Priority Score | Combined urgency score (higher = needs more attention today) |
| CHI Score | Customer Health Index — composite health metric (0-100) |
| Engagement | Current engagement status (Active/Ramping/Pending) |
| SSP | SSP milestone completion status (e.g., 3/7 done) |
| Health | Overall health indicator (Healthy/At Risk/Critical) |
| Strategic Focus Areas | Top 1-2 priorities from their SSP (e.g., "Cost Opt", "Security Posture") |
| Spend | Monthly recurring cost trend indicator |

**Why it matters for Nick:** This is the core of the dashboard. It shows tiered engagement in action — not all customers get the same treatment. The CHI score was added based on Garry Sollis's feedback — it replaces raw case count with a more meaningful composite metric.

---

## 5. Priority Actions (Dismissable List)

**What it is:** Ranked list of action items across all customers, ordered by urgency.

**Features:**
- × dismiss button (appears on hover)
- Dismissed items saved to localStorage (persist across sessions)
- "Show dismissed (N)" toggle to review what was completed
- Color-coded priority dots (red/yellow/green)

**Why it matters for Nick:** Shows a dynamic "to-do" feed, not a static list. The dismiss feature proves the TAM *actions* items rather than just listing them. It's an operational inbox, not a report.

---

## 6. Pending Follow-ups & Commitments (Purple-Bordered Cards)

**What it is:** Cards tracking open commitments made to customers — things the TAM promised to deliver or follow up on.

**Each card shows:**
- Customer name
- Commitment description
- Due date / deadline
- Current status

**Why it matters for Nick:** Accountability layer. Nothing falls through the cracks. When you tell a customer "I'll get back to you on X" — it's tracked here until resolved. Uses "Commitments" (not "Promises") — professional language.

---

## 7. Upcoming Meetings (Blue-Bordered Cards)

**What it is:** Cards showing next scheduled meetings with customers (cadence calls, SBRs, deep-dives).

**Each card shows:**
- Meeting title
- Customer
- Date/time
- Prep status

**Why it matters for Nick:** Prep awareness. The TAM can see at a glance what's coming up and whether they've prepared. Feeds into the cadence call prep SOP.

---

## 8. Security & Resilience Risk Trends (Highcharts Line Chart)

**What it is:** 6-month trend chart with 3 lines:
- Critical Findings (trending ↓ = good)
- EOL Items (trending ↑ = needs attention)
- Unpatched Vulnerabilities (trending ↓ = good)

**Why it matters for Nick:** Portfolio-wide security posture over time, not just a point-in-time snapshot. Shows the TAM tracks whether their recommendations are *actually reducing risk* across the portfolio. EOL trending up is a flag for proactive customer outreach.

---

## 9. Customer Risk Acceptance (Mini-Table)

**What it is:** Small table showing 4 customers with documented risk acceptances.

**Columns:** Customer | Risk | Accepted Date | Review Date

**Why it matters for Nick:** Governance maturity. When a customer *chooses* not to fix a risk (e.g., "we accept running on deprecated RDS version until Q3"), the TAM documents it. This protects both the TAM and the customer — it's a documented decision, not silent neglect.

---

## 10. Time Budget (Collapsible Section)

**What it is:** Horizontal stacked bar showing how TAM time is allocated:
- 🔵 Customer Work (direct customer delivery)
- 🟢 Initiatives (Project Ulduz, presentations, certifications)
- 🟡 Buffer (unplanned/reactive work, admin)

**Legend below the bar shows percentages.**

**Why it matters for Nick:** Capacity management. Shows the TAM manages time *deliberately*, not reactively. When the portfolio grows from 6 to 10 customers, this bar visually shows the squeeze — useful for headcount conversations.

---

## Summary: The Story the Dashboard Tells

> "I manage X customers, tiered by complexity. I know their health (CHI), I track my commitments, I action items daily, I monitor security trends across the portfolio, and I deliberately allocate my time between customer delivery and strategic initiatives. When something escalates, it's visible immediately. Nothing falls through the cracks."

This is what we present to Nick → then show the Min Engagement Framework as the *engine* behind it.
