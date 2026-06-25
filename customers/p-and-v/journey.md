# Customer Journey: P&V Assurances
> TAM: Amar Kutwal | Started: June 2026 | Last updated: June 25, 2026

## Customer Overview
- **Company:** P&V Assurances (P&V Group) — Belgian cooperative insurer, founded 1907
- **Industry:** Insurance / Financial Services
- **Annual Revenue:** ~€2 billion in premiums | Net profit €69M (2023)
- **Employees:** ~2,000 | Customers: 1M+ | Brokers: 300+
- **AWS Maturity:** RAMPING (EOP → ES transition Jun 2026)
- **Monthly AWS Spend:** ~$55K (EC2 $23K, EC2-Other $12K, RDS $8K, CloudWatch $2.5K, ELB $1.9K)
- **Key Customer Contacts:**
  - Waseem — Product Owner / Team lead hosting. Landing zone, Lambda, IaC. Cloud + on-prem. Decision-maker for technical initiatives.
  - Herbert Lindemans — Linux Systems Engineer + FinOps champion (herbert.lindemans@pvgroup.be)
  - Niels Coppens — Solution Architect (niels.coppens@pvgroup.be). Architecture contact for WAR.
  - Neil — Linux Systems Engineer
  - Bart — Previous SA contact
  - Shailesh — AM POC for AI/GenAI discussions
- **AWS Account Team:**
  - AM: Shailesh Jain (jshailj@)
  - SA: Bassem (akirmak@ was previous)
  - TAM: Amar Kutwal (from Jun 2026)
- **Previous TAMs:** Vedanth Gopal Reddy Hanumapur → Ketan Bhadoriya (Dublin) → Ahmed Elfouly
- **AWS Accounts:** 20-account org (payer: 391312048067)
- **Region:** eu-central-1 (Frankfurt)
- **Slack:** #aws-p-and-v-account-team
- **Partners:** Comarch (digital life/benefits platform), NRB (hosting)
- **Key Platforms:** Guidewire Cloud (first Belgian P&C insurer), Comarch (life insurance), EKS (new projects)
- **No EDP or PPA in place.** Customer on NDA with AWS.

## Customer Strategic Goals
1. **Data Center Evacuation** — Urgency to evacuate current DCs. New DC first, then AWS in parallel (end 2026 target)
2. **Cloud First** — All new projects directly on AWS (hybrid for now). Old apps not migrating yet.
3. **Mission-Critical Migration** — "Live Connect" + "Live Insurances Selling" = mission critical. Target: end of year on AWS.
4. **EKS Adoption** — New projects on EKS. Life insurance already on EKS (managed by partner). EKS Auto Mode in discussion.
5. **Digital Transformation** — Guidewire Cloud, Comarch digital life insurance, usage-based auto insurance (telematics)
6. **AI/GenAI** — Shailesh is POC. AWS Marketing may reach out. DevOps Agent demo planned.
7. **FinOps** — Savings Plan interest. Low utilization instances being right-sized by Herbert.
8. **Security** — "Big challenge - lot of tools but not actively being monitored"
9. **Sustainability** — ESG and cooperative mission (reinvests 93% of profits)

## Timeline

### Pre-history (EOP era, Apr 2025 – Feb 2026, TAM: Ketan Bhadoriya then Vedanth)
- **Apr 25, 2025:** First cadence call. Bart (SA) introduced team. Learned: on-prem heavy, DC migration planned end 2026, cloud first for new projects, EKS for lift-and-shift.
- **May 9, 2025:** TA report shared. MFA on root, deprecated Lambda runtimes, EBS snapshots flagged.
- **May 28, 2025:** Monthly cadence. EKS v1.30 lifecycle event (Jul 23 end of standard support). TA Priority enabled.
- **Jun 27, 2025:** Cost analysis: EC2 $23K, Marketing Cloud appeared ($7.8K new), QuickSight spike (+134%).
- **Aug 29, 2025:** Critical website migration discussed → Countdown engagement proposed. No blockers from customer.
- **Feb 2026:** Vedanth took over. Status: failed to migrate everything initially. Key tenant migrated. Hunting SaaS solutions. Life insurance on EKS (partner-managed). Databases stuck due to licensing (VMware dependency). New project: internal employee benefits on EKS.
- **Apr 3, 2026:** TAM shared cost optimization (low utilization), unrestricted SGs, 69 deprecated Lambda functions.
- **Apr 24, 2026:** Herbert (FinOps) + Niels (SA) joined cadence. Recommendations still WIP.
- **May 29, 2026:** ES transition discussed. Herbert working on underutilized instances. Python versions being updated. DevOps Agent demo pending Waseem's availability. Team busy with classic DC migration.

### June 2026 — Transition to Enterprise Support + New TAM (Amar)
- EOP → ES transition effective (monthly min drops $5,500 → $5,000, designated TAM, 15-min critical response)
- Amar takes over from Vedanth
- Key blocker from customer: classic DC migration to new DC (team busy with this)

### June 2026 — Amar's First Actions
- Vedanth shared P&V folder (Jun 5)
- Nick requested Command Centre access from Russell Warne
- Shailesh Jain welcomed Amar to P&V team (Jun 19)
- Internal alignment call set up with Shailesh + Bassem
- TAM Introduction meeting: Jun 25 at 4:00 PM (first customer contact!)
- **Initial priorities identified:**
  - Full onboarding (TAR, CHI baseline, ES walkthrough)
  - VPN health alerts (initially flagged — now resolved, all UP)
  - Windows End-of-Support migration (2 instances confirmed)
  - Build trust quickly (insurance = conservative, regulated)

### June 2026 — Discovery (Dante/K2)
- Dante org discovery: 20 accounts, 24 EC2 in prod, 2 Windows, 5 VPNs ALL UP
- DRP account exists → customer has DR capability

## Current State (as of June 2026)
- **Active engagements:** Onboarding (first customer meeting Jun 25)
- **Open action items:** Intro meeting, establish cadence, CHI baseline
- **Strategic opportunities:**
  1. Onboarding excellence package (HIGH)
  2. Windows EOS migration — 2 instances confirmed (MEDIUM)
  3. DR assessment (MEDIUM — regulated industry)
  4. Critical website migration → Countdown engagement
  5. Security monitoring improvement
- **Health/Risk indicators:** New customer — no baseline. VPN alerts resolved (all UP).

## Goals (Next 6 months)
- [ ] Complete onboarding (TAR, CHI, ES walkthrough) — first 60 days
- [ ] Establish monthly cadence call
- [ ] Deliver first SSP draft
- [ ] Plan Windows EOS migration (2 instances)
- [ ] DR/BCP assessment (regulatory requirement)
- [ ] Build relationship with customer security/compliance team
- [ ] Follow up on Herbert's instance right-sizing (was due "next Tuesday" from May 29)
- [ ] Follow up on deprecated Lambda runtime fixes (69 functions, was due "next Wednesday" from May 29)
- [ ] DevOps Agent demo for Waseem's team
- [ ] Critical website migration → propose Countdown engagement
- [ ] Explore Savings Plan once right-sizing is complete

## Impact Log
| Date | Action | Impact | Evidence |
|------|--------|--------|----------|
| Jun 25, 2026 | TAM Introduction meeting | First customer contact established | Zoom meeting |
| Jun 25, 2026 | Dante org discovery | 20 accounts mapped, infra baselined | K2 data |
| Jun 19, 2026 | Internal team alignment | Shailesh + Bassem onboarded | Slack message |
| Pre-Jun 2026 | Ketan/Vedanth: TA recommendations shared | 69 Lambda deprecated, SG unrestricted, MFA gaps | TA Priority |

## Notes for Future Reference
- Insurance = heavily regulated (compliance, DR, data residency all matter)
- 20-account org is complex — need to understand which accounts are most critical
- eu-central-1 (Frankfurt) = data residency compliance for Belgian insurance
- DRP account exists — shows maturity, but need to verify actual DR testing
- Partner systems: Comarch (comarch-prod 550187681820) + NRB (nrb-prod 211125406427)
- Command Centre access still pending (Nick requested from Russell)
- No EDP or PPA in place
- Customer on NDA with AWS
- 685 on-prem servers were mentioned as migration target — currently paused (licensing/VMware)
- Non-prod accounts to skip in TA: byld (897821664052), test (470327177302), sandbox (994251648509)
- Herbert is the FinOps champion — work closely with him on cost optimization
- Waseem is the decision-maker for technical initiatives (DevOps Agent, new projects)
- Niels (SA) is the architecture contact — WAR conversations go through him
- Critical apps: "Live Connect" + "Live Insurances Selling" — mission critical, target AWS by end 2026
- Guidewire Cloud migration completed — first Belgian P&C insurer on Guidewire Cloud (2025)
- Connected Mobility: usage-based auto insurance pilot with D'Ieteren and Amodo (telematics)
