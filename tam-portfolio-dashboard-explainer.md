# TAM Portfolio Dashboard — Section-by-Section Explainer
## What Each Section Does & Why It Matters

**Purpose:** Quick reference for presenting the dashboard to Nick (and later at TAM Summit)
**Last Updated:** June 25, 2026

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

**Why it matters for Nick:** This is the core of the dashboard. It shows tiered engagement in action — not all customers get the same treatment. The CHI score replaces raw case count with a more meaningful composite metric.

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

**What it is:** Cards tracking open commitments made to customers — things the TAM committed to deliver or follow up on.

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

## 11. Strategic Engagement Opportunities (Collapsible Section)

**What it is:** Per-customer cards showing proactive engagement recommendations. Each card has:
- Customer name
- Top recommended engagement (e.g., "Graviton Migration + EKS Upgrade Planning")
- Priority badge (HIGH / MEDIUM / LOW)
- Signal that triggered the recommendation (e.g., "Fargate retirement pending, $108K/mo spend")
- Proposed AWS program (SHIP, WAR, EBA, CFM)

**How it works:** The weekly research agent (every Monday) and the refresh agent (every 15 min) scan customer communications and Dante infrastructure data for signals:
- Spend anomaly → Cost optimization (CFM)
- Health event → Resilience planning (SHIP)
- New service adoption → Well-Architected Review (WAR)
- Old-gen instances → Graviton migration
- EOS/EOL items → Migration planning (MAP/SHIP)
- Security findings → Security posture review

**Customers covered:** ReBound, APS, BlockTech, Yenlo, P&V, Vopak

**Why it matters for Nick:** This is the "proactive TAM" section. It shows the TAM isn't waiting for customers to ask for help — they're analyzing signals and proposing value-add engagements before problems happen. Each recommendation is backed by real data (not guesswork).

---

## 12. Customer Strategic Intelligence Files (Backend)

**What it is:** Per-customer markdown files at `customers/<name>/strategic-intelligence.md` that serve as the "research brain" behind the dashboard.

**Each file contains:**
- Active Signals table (with priority, category, date)
- Strategic Opportunities (ranked, with signal justification and proposed engagement)
- SSP Alignment checklist
- Communication Patterns (frequency, channels, last contact)
- Research Notes (Dante/K2 infrastructure data, account details)

**Auto-updated by:** `tam-weekly-research` agent (Monday 06:00) + `tam-dashboard-refresh` agent (every 15 min for new signals)

**Why it matters for Nick:** This is what makes it dynamic. The intelligence grows over time — Dante pulls add infrastructure data, email patterns reveal relationship health, case patterns surface systemic issues. The dashboard just renders what these files contain.

---

## Summary: The Story the Dashboard Tells

> "I manage X customers, tiered by complexity. I know their health (CHI), I track my commitments, I action items daily, I monitor security trends across the portfolio, and I deliberately allocate my time between customer delivery and strategic initiatives. When something escalates, it's visible immediately. Nothing falls through the cracks. I proactively research each customer's infrastructure and propose value-add engagements before they ask."

This is what we present to Nick → then show the Min Engagement Framework as the *engine* behind it.

---

## Appendix: Smart Features (Technical — added Jun 2026)

These are the under-the-hood features that make the dashboard operational (not just a report):

### Auto-hide Past Meetings
Every meeting card has a `data-meeting-date` attribute. On page load, JavaScript compares this to today's date and hides anything in the past. No manual cleanup needed.

### Persistent Mark-as-Done (localStorage)
Three separate systems using the same pattern:
- **Communications:** `tam-dashboard-comms-done` — emails/Slack items dismissed stay dismissed
- **Follow-ups:** `tam-dashboard-followups-done` — commitment cards stay hidden once completed
- **Meetings:** `tam-dashboard-meetings-done` — but only hides *past* meetings. Future meetings marked "done" show a green "prepped" border but stay visible.

### Future Meetings Stay Visible
Original bug: marking a future meeting "done" hid it permanently. Fixed Jun 19 2026.
Now: future meetings get a green left-border ("prepped" state) but remain in the upcoming list until their date passes.

### Dynamic Timestamps (all sync indicators)
All "Last updated" / "Last full sync" timestamps now use JavaScript `dayjs()`. They show the current browser time on every page load or refresh. No more stale dates even if the monitoring agent hasn't run recently. Added Jun 24 2026.

### Live Monitoring Agent (every 15 min)
A scheduled task (`tam-dashboard-refresh`) runs every 15 minutes and:
1. Checks all 6 customer email folders + Project and ToDo folder + main inbox
2. Checks Slack customer channels for messages directed at the TAM
3. Checks calendar for upcoming meetings (next 48h)
4. Scans for strategic signals (cost, health, security, modernization keywords)
5. **Writes new action items directly into the HTML** using targeted `file_edit` diffs
6. Updates customer strategic-intelligence.md files when new signals found
7. Posts to activity feed (importance="important" for urgent, "fyi" for routine)

### Strategic Signal Quick-Scan (refresh agent)
On every 15-minute cycle, the monitoring agent also scans emails and Slack for strategic keywords (cost, health, security, modernization, EOS/EOL, case). When detected → updates the relevant customer's strategic-intelligence.md file. This is lightweight — adds less than 30 seconds per cycle.

### Weekly Deep Research Agent (tam-weekly-research)
Runs Monday 06:00. Does comprehensive per-customer research:
- Scans all 6 customer email folders (past 7 days)
- Checks Slack channels
- Pulls live infrastructure data via Dante/K2 (EC2, VPN, EKS, Lambda, RDS, Savings Plans)
- Updates strategic-intelligence.md files
- Refreshes dashboard Strategic Engagement section
- Posts summary to activity feed

### Dante/K2 Infrastructure Research
Live AWS API calls into customer accounts via the `aws-support-troubleshooting-mcp` MCP server. Currently pulls:
- EC2 instances (instance types, state, platform — detects old-gen for Graviton opportunities)
- VPN connections (tunnel UP/DOWN status — detects resilience gaps)
- Savings Plans (active/retired, commitment amounts — detects cost waste)
- EKS clusters, Lambda functions, RDS instances
- Organizations (linked account discovery)

### Slack Action Detection Rules
The agent determines a Slack message needs action if:
- Mentions TAM by name or @mention
- Is addressed directly to the TAM ("Hi Amar...")
- Asks a question to the TAM
- Is the first message after TAM joined a channel
- Is from a customer stakeholder requesting something

Skips: messages between other people, bot notifications, already-replied threads.

### Deduplication
Before adding any new card, the agent searches existing dashboard content for matching customer name + topic keywords. No duplicate cards are created.

### Auto-Reload
Dashboard reloads every 15 minutes (`setTimeout → location.reload()`) to pick up changes written by the monitoring agent.
