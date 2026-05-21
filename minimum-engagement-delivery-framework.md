# Minimum Engagement Delivery Framework
## Supporting Customers at Scale with Tiered, Structured Engagement

**Author:** Amar Kutwal (akkutwal)
**Version:** 2.0
**Date:** May 21, 2026
**Audience:** TAMs managing 8-12 customers with limited time allocation per customer

---

## Executive Summary

This framework defines the engagement model for supporting Enterprise Support customers when TAM time allocation is constrained to 8-10% per customer (~3-4 hours/week). It provides a structured annual cadence, customer tiering model, efficiency mechanisms to maximize impact with minimal time, and a rollout plan for scaling across a growing customer portfolio.

The framework is designed for the current reality: unprecedented customer volumes due to EOP → Enterprise transitions, requiring TAMs to deliver consistent value across 8-12 customers simultaneously. It also directly feeds the SSP creation workflow — Phase 2 of the rollout generates the customer intelligence that becomes SSP milestones.

---

## 1. Customer Tiering Model

Not all customers are equal. Tiering ensures time allocation matches customer complexity, spend, and strategic value. The tier determines engagement depth, SSP complexity, and SBR frequency.

### 1.1 Tier Definitions

| Tier | Accounts | MRC (Monthly Recurring Cost) | Complexity | Time Allocation |
|------|----------|------------------------------|------------|-----------------|
| **Large** | 30+ accounts | >$100K/month | Multi-account, multi-region, regulated industries | 12-15% (~5-6 hrs/week) |
| **Medium** | 15-40 accounts | $60K-$120K/month | Multi-account, moderate complexity | 8-10% (~3-4 hrs/week) |
| **Small** | <15 accounts | <$60K/month | Single-region, limited services | 5-7% (~2-2.5 hrs/week) |

### 1.2 Current Customer Tiering

| Customer | Accounts | MRC | Tier | Rationale |
|----------|----------|-----|------|-----------|
| **Allied Publicity Services (APS)** | 49 | ~$120K | **Large** | High account count, significant spend, complex multi-account structure |
| **ReBound** | 27 | ~$90K | **Medium** | Moderate complexity, growing workloads, multi-account |
| **Vopak** | ~20 | ~$70K (est.) | **Medium** | Partner-resold (InQdo), industrial IoT workloads |
| **BlockTech** | 9 | ~$30K | **Small** | Low account count, limited complexity, single-region |
| **P&V Assurances** | TBD | TBD | TBD | Pending onboarding — assess at intake |
| **Yenlo** | TBD | TBD | TBD | Pending onboarding — assess at intake |

### 1.3 Tier-Based Engagement Differences

| Dimension | Small | Medium | Large |
|-----------|-------|--------|-------|
| **SSP Milestones** | 3-4 | 5-7 | 8-10 |
| **Cadence Calls** | Monthly (skip if quiet) | Monthly (mandatory) | Bi-weekly |
| **SBR Frequency** | 2x/year | 2x/year | Quarterly |
| **SSP Review** | Quarterly | Monthly | Monthly |
| **Exec Touch** | Semi-annually | Quarterly | Monthly |
| **Proactive Outreach** | As-needed | Weekly scan | Daily scan |
| **One-to-Many Eligible** | Yes (default) | Yes (selective) | No (dedicated) |
| **Async Updates OK** | Yes (preferred) | Yes (alternating) | Rarely |

### 1.4 Tier Reassessment

Reassess tiers quarterly or when:
- Customer adds/removes >5 accounts
- MRC changes by >20%
- Customer flags dissatisfaction with engagement depth
- Major architecture change (e.g., multi-region expansion)
- Regulatory compliance requirements emerge

---

## 2. Annual Baseline Activities

### 2.1 Strategic Support Plan (SSP)

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| SSP Creation/Renewal | Annually (or at onboarding) | 2-4 hours (tier-dependent) | SSP document in Blueprint format on SharePoint |
| SSP Milestone Review | Monthly (during cadence) | 15 min/month | Updated milestone status in SSP tracker |
| SSP Progress Report | Quarterly | 30 min/quarter | Written progress summary for customer |

**SSP Complexity by Tier:**

| Tier | Milestones | Depth | Creation Time |
|------|-----------|-------|---------------|
| Small | 3-4 | High-level, quick wins | 2 hours |
| Medium | 5-7 | Balanced depth, mixed horizon | 3 hours |
| Large | 8-10 | Deep, multi-quarter initiatives | 4-5 hours |

**SSP Milestone Selection Criteria:**
1. Is there a cost optimization opportunity > $5K/year? (all tiers)
2. Is there a security gap that creates compliance risk? (all tiers)
3. Is there an EOL/EOS deadline within 12 months? (all tiers)
4. Is there a single point of failure in their architecture? (Medium/Large)
5. Has the customer explicitly asked for help with something? (all tiers)
6. Is there a multi-region resilience gap? (Large only)
7. Is there a governance/organizational maturity opportunity? (Medium/Large)

If yes to any applicable criterion → it becomes an SSP milestone.

---

### 2.2 Support Business Review (SBR)

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| SBR Preparation | Per tier schedule | 1-2 hours | SBR deck (use standard template) |
| SBR Delivery | Per tier schedule | 30-60 min meeting | Presented to customer stakeholders |
| SBR Follow-up | After each SBR | 30 min | Action items documented and tracked |

**SBR by Tier:**

| Tier | Frequency | Duration | Depth |
|------|-----------|----------|-------|
| Small | 2x/year | 30 min | Metrics + top 3 recommendations |
| Medium | 2x/year | 45 min | Metrics + SSP progress + roadmap |
| Large | Quarterly | 60 min | Full review + executive narrative |

**SBR Content (Minimum):**
1. Support case metrics (volume, severity, resolution time)
2. SSP milestone progress (what was delivered, what's next)
3. Cost trend overview (⚠️ NOT for partner-resold — see Section 5)
4. Top 3 recommendations for next period
5. Upcoming AWS changes affecting them (EOL, new features)

---

### 2.3 Strategic Engagement

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| Monthly Cadence Call | Monthly (tier-dependent) | 30 min/month | Meeting notes, action items |
| Proactive Notifications | As needed | 10-15 min each | Email/Slack to customer |
| Quarterly Executive Touch | Per tier schedule | 15 min email | Brief update to executive sponsor |
| Annual Planning Session | Annually | 1 hour | Next year's SSP priorities |

**Engagement Rhythm by Tier:**

**Small (BlockTech):**
```
Week 1: Cadence call (30 min) OR async update
Week 2: Async check — review cases (15 min)
Week 3: SSP work — one milestone (1 hour)
Week 4: Skip unless action needed
Total: ~2-2.5 hours/month
```

**Medium (ReBound, Vopak):**
```
Week 1: Cadence call (30 min)
Week 2: Async check — review cases, proactive outreach (30 min)
Week 3: SSP work — progress on milestones (1.5-2 hours)
Week 4: Prep for next cadence, review health events (30 min)
Total: ~3.5-4 hours/month
```

**Large (APS):**
```
Week 1: Cadence call (30-45 min)
Week 2: Mid-month check-in call or deep-dive (30 min)
Week 3: SSP work — active milestone execution (2-3 hours)
Week 4: Review, prep, proactive outreach (30-45 min)
Total: ~5-6 hours/month
```

---

## 3. How This Framework Enables SSP Creation

The framework isn't just an engagement model — it's an **SSP generation engine**. Phase 2 of the rollout plan systematically produces the customer intelligence that directly feeds SSP milestone creation.

### 3.1 The Framework → SSP Pipeline

```
┌─────────────────────────────────────────────────────────────────┐
│                    FRAMEWORK PHASE 2                              │
│                                                                   │
│  Daily Kickoff SOP ──→ Health events, case patterns, alerts      │
│  Infrastructure Discovery ──→ Architecture gaps, EOL items       │
│  Customer Onboarding SOP ──→ Baseline profile, service map       │
│  Weekly Review ──→ Trends, recurring themes                      │
│  Cadence Calls ──→ Customer-stated priorities                    │
│                                                                   │
└───────────────────────────┬───────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────────┐
│                 SSP CREATION WORKFLOW                             │
│                                                                   │
│  1. Support Plan Builder SOP ingests Phase 2 outputs             │
│  2. Auto-generates candidate milestones from:                    │
│     • Cost optimization signals (Trusted Advisor, CUR data)      │
│     • Security findings (Security Hub, GuardDuty)                │
│     • Architecture risks (single AZ, no DR, EOL runtime)         │
│     • Customer requests (from cadence call notes)                │
│     • Operational gaps (no monitoring, no IaC)                   │
│  3. TAM reviews, prioritizes (tier determines count)             │
│  4. SSP published to SharePoint in Blueprint format              │
│                                                                   │
└───────────────────────────┬───────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────────┐
│                 ONGOING SSP EXECUTION                             │
│                                                                   │
│  • Cadence calls track milestone progress                        │
│  • Weekly Review flags blocked milestones                        │
│  • SBRs report progress to customer leadership                   │
│  • Annual Planning triggers next SSP cycle                       │
│                                                                   │
└─────────────────────────────────────────────────────────────────┘
```

### 3.2 Phase 2 Data → SSP Milestone Mapping

| Phase 2 Activity | Data Produced | SSP Milestone Type |
|-----------------|---------------|-------------------|
| Daily Kickoff → Health Events | Service degradation patterns | Resilience improvement |
| Daily Kickoff → Case Analysis | Recurring issue themes | Operational maturity |
| Infrastructure Discovery | EOL/EOS inventory | Modernization/upgrade |
| Infrastructure Discovery | Architecture gaps | Well-Architected remediation |
| Customer Onboarding → Cost Data | Savings opportunities | Cost optimization |
| Customer Onboarding → Security | Compliance gaps | Security posture |
| Cadence Calls | Customer priorities | Customer-driven initiative |
| Weekly Review | Cross-customer trends | One-to-many workshop topic |

### 3.3 SSP Creation Timeline (Per Customer)

| Week | Activity | Output |
|------|----------|--------|
| Week 1 | Run Infrastructure Discovery + Onboarding SOPs | Customer baseline profile |
| Week 1-2 | Run Support Plan Builder SOP | Draft milestones (8-12 candidates) |
| Week 2 | TAM review — filter to tier-appropriate count | Prioritized milestone list |
| Week 3 | Present draft to customer in cadence call | Customer feedback + alignment |
| Week 3-4 | Finalize SSP, publish to SharePoint | Live SSP in Blueprint format |

**Key insight:** Without Phase 2 running consistently, SSPs would require 4-6 hours of manual research per customer. With the framework, SSP creation drops to 2-3 hours because the data is already collected.

---

## 4. Efficiency Mechanisms

### 4.1 One-to-Many Workshops

Instead of delivering the same guidance to each customer individually, group common topics into workshops that multiple customers attend.

| Workshop Topic | Frequency | Audience | Time Saved |
|---|---|---|---|
| AWS Cost Optimization Best Practices | Quarterly | All customers with cost concerns | 5 hours (vs 1 hour x 5 customers) |
| Security Posture Review Workshop | Semi-annually | All customers | 4 hours saved |
| EKS/ECS Upgrade Readiness | As needed (before major versions EOL) | Customers running containers | 3 hours saved |
| Well-Architected Framework Overview | Annually | New customers | 4 hours saved |
| Disaster Recovery Planning | Semi-annually | Customers without DR | 3 hours saved |

**Tier eligibility for one-to-many:**
- **Small:** Default — workshops replace most individual deep-dives
- **Medium:** Selective — attend general workshops, get individual follow-up for specifics
- **Large:** Excluded — get dedicated sessions (too much customer-specific context)

**How to implement:**
1. Identify common themes across your customer portfolio (use Weekly Review SOP data)
2. Schedule a single 45-60 min session and invite all relevant customers
3. Record the session for customers who can't attend
4. Follow up individually only for customer-specific questions

---

### 4.2 Async Updates

Replace meetings with written updates where possible.

| Instead of... | Do this... | Time Saved |
|---|---|---|
| 30-min call for "no updates" | Send a 3-line email: "No critical items. SSP on track. Next cadence: [date]" | 25 min |
| Ad-hoc calls for AWS notifications | Proactive email with context + recommendation | 20 min |
| Monthly cadence with no agenda | Skip and send async summary (with customer agreement) | 30 min |
| Individual EOL notifications | Batch email to all affected customers | 15 min per customer |

**Tier guidance for async:**
- **Small:** Async is the default. Calls only when there's a real agenda.
- **Medium:** Alternate — one month call, next month async if quiet.
- **Large:** Calls are the default. Async only as supplemental.

**Async update template:**
```
Subject: AWS TAM Monthly Update — [Customer Name] — [Month Year]

Hi [Name],

Quick monthly update:

✅ SSP Progress: [milestone X completed / on track]
📋 Open Cases: [X open, Y resolved this month]
⚠️ Action Needed: [any items requiring customer action]
📅 Next Cadence: [date/time]

No meeting needed this month unless you have questions. Reply to this email or we'll catch up at our next cadence.

Best,
Amar
```

---

### 4.3 Self-Service Enablement with Frontier Agents

Empower customers to get answers without waiting for TAM response.

| Self-Service Mechanism | What It Does | TAM Time Saved |
|---|---|---|
| **AWS Trusted Advisor** | Automated checks for cost, security, performance | Reduces "how do I optimize?" questions |
| **AWS Health Dashboard** | Customer sees their own health events | Reduces "is there an outage?" questions |
| **DevOps Agent** | Customer troubleshoots their own issues | Reduces case volume for common problems |
| **AWS Well-Architected Tool** | Self-service architecture reviews | Reduces ad-hoc review requests |
| **Cost Explorer + Budgets** | Customer monitors their own spend | Reduces "why did my bill go up?" questions |
| **Frontier Agent (Q Developer)** | AI-powered answers to AWS questions | Reduces general "how do I..." questions |

**How to enable:**
1. During onboarding, show customers these self-service tools
2. In the first cadence call, demo Trusted Advisor and Health Dashboard
3. Offer DevOps Agent workshop enrollment (ties to Ambassador program)
4. Set up AWS Budgets alerts so customers self-monitor spend
5. Share relevant documentation and re:Post links proactively

**Goal:** Reduce reactive case volume by 30% through self-service enablement, freeing TAM time for strategic work.

---

### 4.4 Automation via SOPs

Use the Project Ulduz SOPs to automate repetitive TAM tasks:

| SOP | What It Automates | Time Saved Per Use |
|-----|-------------------|-------------------|
| Daily Kickoff | Email triage, case review, priority list | 20-30 min/day |
| Daily Focus Recommender | Multi-customer prioritization | 15 min/day |
| Cadence Call Prep | Pre-meeting data gathering | 20-25 min/call |
| Customer Onboarding | New customer setup and research | 2-3 hours/customer |
| Weekly Review | Week summary and next week planning | 45-60 min/week |
| Support Plan Builder | SSP milestone generation | 2-3 hours/SSP |

**Total time saved per week: ~5-7 hours** (redirected to strategic customer work)

---

### 4.5 Template Utilization

Standardized templates reduce time spent on recurring deliverables:

| Template | Use Case | Location |
|----------|----------|----------|
| SSP Blueprint | Creating new SSPs | SharePoint (standard template) |
| SBR Deck | Semi-annual business reviews | SharePoint (standard template) |
| Customer Profile | Onboarding documentation | `customers/_template/profile.md` |
| Meeting Notes | Cadence call documentation | Standard format in SharePoint |
| Async Update Email | Monthly written updates | Template in this document (Section 4.2) |
| Proactive Notification | AWS changes affecting customer | Standard email format |

---

## 5. Partner-Resold Engagement Model

### 5.1 Overview

Partner-resold customers (e.g., Vopak via InQdo) operate under different rules than direct Enterprise Support customers. The reselling partner owns the commercial relationship, and AWS TAM engagement must respect those boundaries.

### 5.2 Key Constraints for Partner-Resold Customers

| Rule | Rationale | Impact on TAM |
|------|-----------|---------------|
| **NEVER share cost/spend data** | Partner sets pricing; revealing AWS cost exposes their margin | No cost slides in SBR, no savings recommendations with $ amounts |
| **Partner is the commercial contact** | Customer pays partner, not AWS | Never discuss pricing, contracts, or renewals |
| **Partner may attend cadence calls** | They need visibility into TAM activity | Include partner in invites (check per-customer) |
| **Escalation path includes partner** | Partner is accountable for support experience | Loop partner into escalations before raising internally |
| **Self-service tools may be limited** | Partner may manage Trusted Advisor, Budgets, etc. | Confirm what customer has access to before recommending |

### 5.3 What Changes in the Framework

| Framework Element | Direct Customer | Partner-Resold Customer |
|-------------------|-----------------|------------------------|
| **SBR: Cost section** | Include cost trends + optimization recommendations | Replace with "Operational Efficiency" — no $ figures |
| **SSP: Cost milestones** | "Save $X by doing Y" | "Improve resource efficiency by doing Y" (no dollar amounts) |
| **Proactive: Cost alerts** | "Your spend increased 20%" | Do NOT send. Partner handles billing relationship. |
| **Self-service: Budgets** | Set up AWS Budgets with customer | Skip unless partner confirms access |
| **Cadence invites** | Customer contacts only | Include partner contact (InQdo AM) in CC |
| **Escalation** | Direct to AWS support chain | Partner → then AWS if needed |
| **Workshop eligibility** | All workshops | All EXCEPT cost-focused workshops |

### 5.4 Vopak-Specific Rules (via InQdo)

| Item | Detail |
|------|--------|
| Partner | InQdo (AWS Advanced Partner) |
| Partner Contact | Check customer profile for current InQdo AM |
| Cost Data | ❌ NEVER share — InQdo sets their own pricing |
| Billing Questions | Redirect to InQdo: "That's managed through your InQdo agreement" |
| Technical Engagement | ✅ Full TAM engagement on architecture, security, operations |
| SSP | ✅ Create SSP — but no cost optimization milestones with dollar amounts |
| SBR | ✅ Deliver SBR — replace cost section with operational metrics only |
| Workshop Attendance | ✅ All workshops EXCEPT "Cost Optimization Best Practices" |

### 5.5 Safe Phrases for Partner-Resold Customers

When cost topics come up organically:
- ✅ "I can help optimize your resource utilization"
- ✅ "Right-sizing these instances would improve efficiency"
- ✅ "This architecture change would reduce waste"
- ❌ "You could save $X per month"
- ❌ "Your current spend is..."
- ❌ "The list price for this service is..."
- ❌ "Here's your Cost Explorer view..."

---

## 6. Proposed Rollout Plan

### Phase 1: Foundation (Weeks 1-2) — CURRENT

| Step | Action | Status |
|------|--------|--------|
| 1 | Build SOPs for daily/weekly automation | ✅ Complete (7 SOPs) |
| 2 | Onboard existing customers with profiles | ✅ Complete (4 customers) |
| 3 | Establish cadence rhythm for each customer | 🟡 In progress |
| 4 | Set up SharePoint folder structure | 🟡 In progress |
| 5 | Document this framework | ✅ Complete (this document) |
| 6 | Assign customer tiers | ✅ Complete (see Section 1.2) |

### Phase 2: Optimization (Weeks 3-4) — SSP CREATION PHASE

| Step | Action | Target | SSP Impact |
|------|--------|--------|------------|
| 7 | Run Daily Kickoff SOP consistently for 2 weeks | Build habit + refine | Generates health event + case data for SSPs |
| 8 | Run Infrastructure Discovery for APS + ReBound | Architecture baseline | Produces architecture gaps → SSP milestones |
| 9 | Create SSP for APS (Large tier — 8-10 milestones) | Full SSP | Uses Phase 2 data directly |
| 10 | Create SSP for ReBound (Medium tier — 5-7 milestones) | Full SSP | Uses Phase 2 data directly |
| 11 | Create light SSP for BlockTech (Small — 3-4 milestones) | Light SSP | Focused quick wins |
| 12 | Create light SSP for Vopak (Medium, partner-resold) | Light SSP (no cost $) | Respects partner rules |
| 13 | Identify first one-to-many workshop topic | Based on common themes | Cross-customer pattern from SOPs |
| 14 | Enable self-service tools for each customer | Trusted Advisor, Health | Reduces future case volume |

### Phase 3: Scale (Weeks 5-8)

| Step | Action | Target |
|------|--------|--------|
| 15 | Onboard remaining EOP customers (P&V, Yenlo) | Using Customer Onboarding SOP |
| 16 | Assign tiers to new customers | Based on account count + MRC |
| 17 | Deliver first one-to-many workshop | Cost optimization or security |
| 18 | Implement async updates for Small-tier quiet months | Reduce unnecessary meetings |
| 19 | Enroll customers in DevOps Agent | Self-service troubleshooting |
| 20 | First SBR delivery using automated data | Validate SBR template |

### Phase 4: Steady State (Ongoing)

| Rhythm | Activity | Frequency |
|--------|----------|-----------|
| Daily | Run Daily Kickoff + Focus Recommender | Every morning |
| Weekly | Run Weekly Review | Every Friday |
| Monthly | Cadence call OR async update per customer (tier-dependent) | Monthly |
| Quarterly | SBR for Large customers; SSP review all tiers | Every quarter |
| Semi-annually | SBR for Medium/Small customers | Every 6 months |
| Annually | SSP renewal + annual planning + tier reassessment | Yearly |

---

## 7. Capacity Model

### Current State (May 2026)

| Metric | Value |
|--------|-------|
| Active customers | 4 (ReBound, BlockTech, Vopak, Allied Publicity) |
| Pending customers | 2 (P&V Assurances, Yenlo) |
| Large tier customers | 1 (APS) |
| Medium tier customers | 2 (ReBound, Vopak) |
| Small tier customers | 1 (BlockTech) |
| Total customer hours/week | ~14-16 hours |
| Remaining for initiatives/admin | ~24 hours |

### Target State (Q3 2026)

| Metric | Value |
|--------|-------|
| Active customers | 6-8 |
| Tiering distribution | 1-2 Large, 3-4 Medium, 2-3 Small |
| Total customer hours/week | ~22-26 hours |
| Remaining for initiatives/admin | ~14-18 hours |
| Automation savings | ~5-7 hours/week (reinvested in customer work) |

### Breaking Point Analysis (Updated with Tiering)

| Portfolio Mix | Total Hours/Week | Feasible? | Notes |
|:---|:---:|:---:|:---|
| 1L + 2M + 3S (6 total) | ~19 hrs | ✅ Comfortable | Current trajectory |
| 1L + 3M + 4S (8 total) | ~24 hrs | ✅ Manageable | Requires consistent SOP usage |
| 2L + 3M + 3S (8 total) | ~28 hrs | ⚠️ Tight | Requires all efficiency mechanisms |
| 2L + 4M + 4S (10 total) | ~33 hrs | ⚠️ Risky | One-to-many + async essential |
| 2L + 5M + 5S (12 total) | ~38 hrs | ❌ Not sustainable | Escalate for headcount |

---

## 8. Success Metrics

### 8.1 Framework Effectiveness Metrics

These metrics measure whether the framework itself is working — i.e., can you deliver quality engagement at scale?

| Metric | Baseline (May 2026) | Target (Q3 2026) | Target (Q4 2026) | How to Measure |
|--------|---------------------|-------------------|-------------------|----------------|
| Customers managed per TAM | 4 | 6-8 | 8-10 | Registry count |
| SSP completion rate | 0% | 75% | 100% (all customers have SSP) | SharePoint audit |
| SBR delivery rate | 0% | 50% | 100% (per tier schedule) | Calendar + SharePoint |
| Morning prep time | 30-45 min | 15-20 min | 10-15 min | Self-reported |
| Proactive vs reactive ratio | 20/80 | 40/60 | 50/50 | Weekly review data |
| Framework adherence (cadences on schedule) | N/A | 80% | 90% | Calendar audit |

### 8.2 Customer Outcome Metrics

These metrics measure whether the engagement is delivering value to customers.

| Metric | Baseline | Target (Q3 2026) | How to Measure |
|--------|----------|-------------------|----------------|
| Customer Health Index (CHI) | Mixed | All above 50 | Sentral CHI dashboard |
| Case volume trend | Baseline | -20% (via self-service) | Case dashboard |
| Customer-reported satisfaction | No data | Positive (qualitative) | Post-SBR feedback |
| SSP milestone completion rate | 0% | 60% milestones on track | SSP tracker |
| Time-to-first-value (new customers) | Unknown | <4 weeks | Onboarding → first delivered milestone |
| Contract renewal rate | 100% | Maintain 100% | Account Manager confirmation |

### 8.3 Efficiency Metrics

These metrics measure whether the automation and scaling mechanisms are working.

| Metric | Baseline | Target | How to Measure |
|--------|----------|--------|----------------|
| Hours saved by SOPs/week | 0 | 5-7 hrs | Time tracking comparison |
| Async update adoption rate | 0% | 40% of monthly touches | Count async vs. call |
| One-to-many workshops delivered | 0 | 2-3 per quarter | Workshop log |
| Self-service tool adoption | 0 customers | All customers using ≥2 tools | Self-service usage check |
| Template reuse rate | Low | >80% of deliverables use templates | Self-audit |

### 8.4 Leading Indicators (Early Warning)

Watch these signals — if they trend wrong, the framework needs adjustment:

| Signal | Warning Threshold | Action |
|--------|-------------------|--------|
| Customer requests more TAM time | 2+ customers in same quarter | Re-tier or adjust allocation |
| Cases with "TAM requested" but no TAM action in 48h | Any occurrence | Check Daily Kickoff SOP is running |
| Cadence calls repeatedly canceled/skipped | 2+ months consecutive | Re-engage proactively, check if async is sufficient |
| SSP milestone stalled >6 weeks | Any milestone | Escalate or replace milestone |
| CHI drops below 40 | Any customer | Immediate attention — deep dive into root cause |
| SBR overdue by >2 weeks | Any customer | Reprioritize and deliver |

### 8.5 Quarterly Review Questions

At each quarter-end, ask:
1. **Scale:** Am I managing more customers without quality degradation?
2. **Quality:** Are SSPs being delivered and milestones progressing?
3. **Efficiency:** Are SOPs and automation actually saving time?
4. **Customer value:** Are health scores stable/improving?
5. **Sustainability:** Am I working sustainable hours? Is the breaking point approaching?

---

## 9. Risks and Mitigations

| Risk | Impact | Mitigation |
|------|--------|------------|
| Too many customers too fast | Quality drops, customers notice | Escalate to Nick if >10 customers before automation is stable |
| Async updates feel impersonal | Customer dissatisfaction | Always offer "let me know if you'd prefer a call" option |
| Self-service doesn't reduce cases | No time savings | Track case sources — if self-service isn't working, adjust approach |
| One-to-many workshops low attendance | Wasted prep time | Record all sessions, share async, make attendance optional |
| Partner-resold customers (Vopak) cost data leak | Compliance risk, partner trust | Documented rules (Section 5), pre-SBR checklist, never auto-include cost slides |
| Tiering causes customer to feel "second class" | Relationship damage | Never expose tiers externally; all customers get quality engagement |
| Large customer consumes all bandwidth | Small/Medium neglected | Time-box Large at 15% max; escalate if consistently exceeding |
| SSP milestones disconnected from customer priorities | Low engagement, stalled milestones | Always validate milestones in cadence call before finalizing SSP |

---

## Appendix A: Annual Calendar View

| Month | Baseline Activities | Efficiency Actions |
|-------|--------------------|--------------------|
| **Jan** | SSP renewal/creation for all customers; Tier reassessment | Set up automation for new year |
| **Feb** | Monthly cadences | Identify one-to-many workshop topics |
| **Mar** | Monthly cadences, Q1 SBR prep (Large) | Deliver first workshop |
| **Apr** | Q1 SBR delivery (Large), H1 SBR prep (Med/Small) | Review self-service adoption |
| **May** | Monthly cadences, H1 SBR delivery (Med/Small) | Async updates for low-activity Small customers |
| **Jun** | Monthly cadences, SSP mid-year review | Second workshop |
| **Jul** | Monthly cadences, Q2 SBR prep (Large) | Review framework effectiveness; adjust tiers |
| **Aug** | Q2 SBR delivery (Large) | Adjust based on learnings |
| **Sep** | Monthly cadences, Q3 SBR prep (Large) | Third workshop |
| **Oct** | Q3 SBR delivery (Large), H2 SBR prep (Med/Small); Annual planning prep | Customer self-service check-in; Tier reassessment |
| **Nov** | H2 SBR delivery (Med/Small); Annual planning sessions | Contract renewals (coordinate with AM) |
| **Dec** | Year-end wrap-up, SSP close-out, Q4 SBR (Large) | Document learnings for next year |

---

## Appendix B: Quick Reference — Engagement by Customer

| Customer | Tier | Cadence | SBR | SSP Milestones | Partner Rules | Notes |
|----------|------|---------|-----|----------------|---------------|-------|
| APS | Large | Monthly (mandatory) | Quarterly | 8-10 | None (direct) | 49 accounts, complex org |
| ReBound | Medium | Monthly | Semi-annual | 5-7 | None (direct) | Growing workload |
| Vopak | Medium | Monthly | Semi-annual (no cost) | 5-7 (no cost $) | InQdo rules (Section 5) | Never share cost data |
| BlockTech | Small | Monthly or async | Semi-annual | 3-4 | None (direct) | Quick wins focus |
| P&V | TBD | TBD | TBD | TBD | TBD | Pending onboarding |
| Yenlo | TBD | TBD | TBD | TBD | TBD | Pending onboarding |

---

*This framework is a living document. Review quarterly using the success metrics in Section 8. Update tiers, engagement rhythms, and efficiency mechanisms based on what's working.*
