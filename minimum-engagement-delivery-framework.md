# Minimum Engagement Delivery Framework
## Supporting Small, Low-Complexity Customers at Scale

**Author:** Amar Kutwal (akkutwal)
**Version:** 1.0
**Date:** May 20, 2026
**Audience:** TAMs managing 8-12 customers with limited time allocation per customer

---

## Executive Summary

This framework defines the minimum engagement model for supporting small, low-complexity Enterprise Support customers when TAM time allocation is constrained to 8-10% per customer (~3-4 hours/week). It provides a structured annual cadence, efficiency mechanisms to maximize impact with minimal time, and a rollout plan for scaling across a growing customer portfolio.

The framework is designed for the current reality: unprecedented customer volumes due to EOP → Enterprise transitions, requiring TAMs to deliver consistent value across 8-12 customers simultaneously.

---

## 1. Annual Baseline Activities

### 1.1 Strategic Support Plan (SSP)

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| SSP Creation/Renewal | Annually (or at onboarding) | 2-3 hours one-time | SSP document in Blueprint format on SharePoint |
| SSP Milestone Review | Monthly (during cadence) | 15 min/month | Updated milestone status in SSP tracker |
| SSP Progress Report | Quarterly | 30 min/quarter | Written progress summary for customer |

**Minimum SSP for small customers:**
- 3-5 milestones (not 8-10 like large customers)
- Aligned to Well-Architected pillars
- Focus on highest-impact items only
- Use the Support Plan Builder SOP to auto-generate draft milestones from customer data

**SSP Milestone Selection Criteria (for small customers):**
1. Is there a cost optimization opportunity > $5K/year?
2. Is there a security gap that creates compliance risk?
3. Is there an EOL/EOS deadline within 12 months?
4. Is there a single point of failure in their architecture?
5. Has the customer explicitly asked for help with something?

If yes to any → it becomes an SSP milestone.

---

### 1.2 Support Business Review (SBR)

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| SBR Preparation | Semi-annually | 1-2 hours | SBR deck (use standard template) |
| SBR Delivery | Semi-annually | 30-60 min meeting | Presented to customer stakeholders |
| SBR Follow-up | After each SBR | 30 min | Action items documented and tracked |

**Minimum SBR for small customers:**
- 2x per year (not quarterly)
- Use automated data from Daily Kickoff SOP to populate metrics
- Standard template with: case summary, SSP progress, cost trends, recommendations
- Keep to 30 minutes — small customers don't need 60-min deep dives

**SBR Content (Minimum):**
1. Support case metrics (volume, severity, resolution time)
2. SSP milestone progress (what was delivered, what's next)
3. Cost trend overview (no specific numbers if partner-resold — see Vopak rules)
4. Top 3 recommendations for next period
5. Upcoming AWS changes affecting them (EOL, new features)

---

### 1.3 Strategic Engagement

| Activity | Frequency | Time Investment | Deliverable |
|----------|-----------|----------------|-------------|
| Monthly Cadence Call | Monthly | 30 min/month | Meeting notes, action items |
| Proactive Notifications | As needed | 10-15 min each | Email/Slack to customer |
| Quarterly Executive Touch | Quarterly | 15 min email | Brief update to executive sponsor |
| Annual Planning Session | Annually | 1 hour | Next year's SSP priorities |

**Minimum engagement rhythm for small customers:**

```
Week 1: Cadence call (30 min)
Week 2: Async check — review cases, send proactive update if needed (15 min)
Week 3: SSP work — progress on one milestone (1-2 hours)
Week 4: Async check — prep for next month's cadence (15 min)
```

**Total monthly time per small customer: ~4-5 hours**

---

## 2. Efficiency Mechanisms

### 2.1 One-to-Many Workshops

Instead of delivering the same guidance to each customer individually, group common topics into workshops that multiple customers attend.

| Workshop Topic | Frequency | Audience | Time Saved |
|---|---|---|---|
| AWS Cost Optimization Best Practices | Quarterly | All customers with cost concerns | 5 hours (vs 1 hour x 5 customers) |
| Security Posture Review Workshop | Semi-annually | All customers | 4 hours saved |
| EKS/ECS Upgrade Readiness | As needed (before major versions EOL) | Customers running containers | 3 hours saved |
| Well-Architected Framework Overview | Annually | New customers | 4 hours saved |
| Disaster Recovery Planning | Semi-annually | Customers without DR | 3 hours saved |

**How to implement:**
1. Identify common themes across your customer portfolio (use Weekly Review SOP data)
2. Schedule a single 45-60 min session and invite all relevant customers
3. Record the session for customers who can't attend
4. Follow up individually only for customer-specific questions

---

### 2.2 Async Updates

Replace meetings with written updates where possible.

| Instead of... | Do this... | Time Saved |
|---|---|---|
| 30-min call for "no updates" | Send a 3-line email: "No critical items. SSP on track. Next cadence: [date]" | 25 min |
| Ad-hoc calls for AWS notifications | Proactive email with context + recommendation | 20 min |
| Monthly cadence with no agenda | Skip and send async summary (with customer agreement) | 30 min |
| Individual EOL notifications | Batch email to all affected customers | 15 min per customer |

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

### 2.3 Self-Service Enablement with Frontier Agents

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

### 2.4 Automation via SOPs

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

### 2.5 Template Utilization

Standardized templates reduce time spent on recurring deliverables:

| Template | Use Case | Location |
|----------|----------|----------|
| SSP Blueprint | Creating new SSPs | SharePoint (standard template) |
| SBR Deck | Semi-annual business reviews | SharePoint (standard template) |
| Customer Profile | Onboarding documentation | `customers/_template/profile.md` |
| Meeting Notes | Cadence call documentation | Standard format in SharePoint |
| Async Update Email | Monthly written updates | Template in this document (Section 2.2) |
| Proactive Notification | AWS changes affecting customer | Standard email format |

---

## 3. Proposed Rollout Plan

### Phase 1: Foundation (Weeks 1-2) — CURRENT

| Step | Action | Status |
|------|--------|--------|
| 1 | Build SOPs for daily/weekly automation | ✅ Complete (7 SOPs) |
| 2 | Onboard existing customers with profiles | ✅ Complete (4 customers) |
| 3 | Establish cadence rhythm for each customer | 🟡 In progress |
| 4 | Set up SharePoint folder structure | 🟡 In progress |
| 5 | Document this framework | ✅ Complete (this document) |

### Phase 2: Optimization (Weeks 3-4)

| Step | Action | Target |
|------|--------|--------|
| 6 | Run Daily Kickoff SOP consistently for 2 weeks | Build habit + refine |
| 7 | Create SSPs for ReBound + Allied Publicity | 2 full SSPs |
| 8 | Create blueprints for BlockTech + Vopak | 2 light blueprints |
| 9 | Identify first one-to-many workshop topic | Based on common themes |
| 10 | Enable self-service tools for each customer | Trusted Advisor, Health Dashboard |

### Phase 3: Scale (Weeks 5-8)

| Step | Action | Target |
|------|--------|--------|
| 11 | Onboard remaining EOP customers (P&V, Yenlo) | Using Customer Onboarding SOP |
| 12 | Deliver first one-to-many workshop | Cost optimization or security |
| 13 | Implement async updates for low-activity months | Reduce unnecessary meetings |
| 14 | Enroll customers in DevOps Agent | Self-service troubleshooting |
| 15 | First SBR delivery using automated data | Validate SBR template |

### Phase 4: Steady State (Ongoing)

| Rhythm | Activity | Frequency |
|--------|----------|-----------|
| Daily | Run Daily Kickoff + Focus Recommender | Every morning |
| Weekly | Run Weekly Review | Every Friday |
| Monthly | Cadence call OR async update per customer | Monthly |
| Quarterly | SBR for each customer | Every 3-6 months |
| Annually | SSP renewal + annual planning | Yearly |

---

## 4. Capacity Model

### Current State (May 2026)

| Metric | Value |
|--------|-------|
| Active customers | 4 (ReBound, BlockTech, Vopak, Allied Publicity) |
| Pending customers | 2 (P&V Assurances, Yenlo) |
| Time allocation per customer | ~8-10% (~3-4 hours/week) |
| Total customer hours/week | ~16 hours |
| Remaining for initiatives/admin | ~24 hours |

### Target State (Q3 2026)

| Metric | Value |
|--------|-------|
| Active customers | 6-8 |
| Time allocation per customer | ~8% (~3 hours/week) |
| Total customer hours/week | ~24 hours |
| Remaining for initiatives/admin | ~16 hours |
| Automation savings | ~5-7 hours/week (reinvested in customer work) |

### Breaking Point Analysis

| Customers | Hours/Customer/Week | Feasible? | Notes |
|:---------:|:-------------------:|:---------:|-------|
| 6 | 3.5 | ✅ Yes | Comfortable with automation |
| 8 | 3.0 | ✅ Yes | Requires consistent SOP usage |
| 10 | 2.5 | ⚠️ Tight | Requires async updates + one-to-many |
| 12 | 2.0 | ⚠️ Risky | Requires all efficiency mechanisms active |
| 15+ | <1.5 | ❌ Not sustainable | Need to escalate for additional headcount |

---

## 5. Success Metrics

| Metric | Baseline | Target (Q3 2026) | How to Measure |
|--------|----------|-------------------|----------------|
| Customers managed per TAM | 4 | 8-10 | Registry count |
| SSP completion rate | 0% | 100% (all customers have SSP) | SharePoint audit |
| SBR delivery rate | 0% | 100% (2x/year per customer) | Calendar + SharePoint |
| Morning prep time | 30-45 min | 10-15 min | Self-reported |
| Proactive vs reactive ratio | 20/80 | 50/50 | Weekly review data |
| Customer health scores | Mixed | All above 50 | Sentral CHI |
| Case volume trend | Baseline | -20% (via self-service) | Case dashboard |

---

## 6. Risks and Mitigations

| Risk | Impact | Mitigation |
|------|--------|-----------|
| Too many customers too fast | Quality drops, customers notice | Escalate to Nick if >10 customers before automation is stable |
| Async updates feel impersonal | Customer dissatisfaction | Always offer "let me know if you'd prefer a call" option |
| Self-service doesn't reduce cases | No time savings | Track case sources — if self-service isn't working, adjust approach |
| One-to-many workshops low attendance | Wasted prep time | Record all sessions, share async, make attendance optional |
| Partner-resold customers (Vopak) have different rules | Compliance risk | Document partner rules per customer, never share cost data directly |

---

## Appendix: Annual Calendar View

| Month | Baseline Activities | Efficiency Actions |
|-------|--------------------|--------------------|
| **Jan** | SSP renewal/creation for all customers | Set up automation for new year |
| **Feb** | Monthly cadences | Identify one-to-many workshop topics |
| **Mar** | Monthly cadences, Q1 SBR prep | Deliver first workshop |
| **Apr** | Q1 SBR delivery | Review self-service adoption |
| **May** | Monthly cadences | Async updates for low-activity customers |
| **Jun** | Monthly cadences, SSP mid-year review | Second workshop |
| **Jul** | Monthly cadences | Review framework effectiveness |
| **Aug** | Monthly cadences, Q2 SBR prep | Adjust based on learnings |
| **Sep** | Q2 SBR delivery | Third workshop |
| **Oct** | Monthly cadences, annual planning prep | Customer self-service check-in |
| **Nov** | Annual planning sessions | Contract renewals (coordinate with AM) |
| **Dec** | Year-end wrap-up, SSP close-out | Document learnings for next year |

---

*This framework is a living document. Update quarterly based on what's working and what's not.*
