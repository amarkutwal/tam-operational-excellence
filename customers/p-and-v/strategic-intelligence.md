# Strategic Intelligence: P&V Assurances
> Auto-updated by tam-weekly-research agent | Last refresh: 2026-06-25

## Customer Context
- **Industry:** Insurance / Financial Services (Belgian cooperative, founded 1907)
- **AWS Maturity:** RAMPING (EOP → ES transition Jun 2026)
- **Monthly Spend:** ~$55K (EC2 $23K, EC2-Other $12K, RDS $8K, CloudWatch $2.5K, ELB $1.9K)
- **Key Contacts:** Waseem (PO/decision-maker), Herbert Lindemans (FinOps), Niels Coppens (SA)
- **Previous TAMs:** Vedanth → Ketan Bhadoriya → Ahmed Elfouly
- **AM:** Shailesh Jain (jshailj@) | **SA:** Bassem (akirmak@)
- **Slack Channel:** #aws-p-and-v-account-team
- **Partners:** Comarch (digital life platform), NRB (hosting)
- **Key Platforms:** Guidewire Cloud (P&C core), EKS (new projects), RDS/PostgreSQL

## Active Signals
| Signal | Category | Date Detected | Priority |
|--------|----------|---------------|----------|
| New ES customer — onboarding in progress | Onboarding | 2026-06 | HIGH |
| 69 Lambda functions on deprecated runtimes | Security/EOS | 2025-05 | HIGH |
| Mission-critical app migration planned (end 2026) | Migration | 2026-02 | HIGH |
| Security tools "not actively monitored" | Security | 2025-04 | HIGH |
| Windows End-of-Support — 2 instances in prod | EOS/EOL | 2026-06 | MEDIUM |
| EKS v1.30 end of standard support (Jul 23, 2025) | EOS/EOL | 2025-05 | MEDIUM |
| Cost optimization in progress (Herbert right-sizing) | Cost | 2026-05 | MEDIUM |
| Savings Plan interest (after right-sizing complete) | Cost | 2025-04 | MEDIUM |
| Unrestricted Security Groups flagged | Security | 2026-04 | MEDIUM |
| 685 on-prem servers mentioned as migration target | Migration | 2025-04 | LOW |
| VPN health — ALL 10 tunnels UP (resolved) | Resilience | 2026-06 | RESOLVED |

## Strategic Opportunities
### 1. Mission-Critical App Migration — Countdown Engagement (HIGH)
- **Signal:** "Live Connect" + "Live Insurances Selling" apps targeted for AWS by end 2026. Team busy with DC migration.
- **Engagement:** AWS Countdown — extended support through migration lifecycle
- **Expected Impact:** Successful migration of mission-critical insurance apps to AWS
- **Timeline:** H2 2026 (propose now, plan Q3, execute Q4)

### 2. Security Posture Improvement (HIGH)
- **Signal:** Customer said "Security is a big challenge - lot of tools but not actively monitored." 69 deprecated Lambda runtimes. Unrestricted SGs.
- **Engagement:** Security posture review → remediation plan. Start with deprecated runtimes (quick win).
- **Expected Impact:** Compliance improvement, reduced attack surface, trust building
- **Timeline:** Q3 2026 (Lambda runtimes fix already started — follow up)

### 3. Onboarding Excellence Package (HIGH)
- **Signal:** Brand new ES customer. First impressions matter.
- **Engagement:** TAR, CHI baseline, ES features walkthrough, first SSP draft
- **Expected Impact:** Strong relationship foundation, quick value demonstration
- **Timeline:** First 60 days (started Jun 25)

### 4. EKS Modernization + Auto Mode (MEDIUM)
- **Signal:** EKS adoption growing (new projects + life insurance). EKS Auto Mode in discussion. v1.30 lifecycle event.
- **Engagement:** EKS best practices session + Auto Mode assessment
- **Expected Impact:** Reduced operational overhead, better scaling
- **Timeline:** Q3 2026

### 5. Cost Optimization + Savings Plan (MEDIUM)
- **Signal:** Herbert right-sizing underutilized instances. SP interest expressed. No EDP/PPA in place.
- **Engagement:** Cost review after right-sizing → Savings Plan recommendation
- **Expected Impact:** 10-20% cost reduction ($6-11K/mo savings)
- **Timeline:** After right-sizing completes (was due "next week" from May 29)

### 6. Windows EOS Migration (MEDIUM)
- **Signal:** 2 Windows instances confirmed in prod (Dante data Jun 25)
- **Engagement:** Migration planning session → MAP/SHIP engagement
- **Expected Impact:** Compliance (insurance regulatory), reduced risk
- **Timeline:** Q3-Q4 2026

### 7. DevOps Agent + AI Exploration (MEDIUM)
- **Signal:** DevOps Agent demo pending (Waseem's team). Shailesh (AM) is AI/GenAI POC.
- **Engagement:** DevOps Agent demo + AI use case workshop
- **Expected Impact:** Developer productivity, operational efficiency
- **Timeline:** When team is available (currently busy with DC migration)

## SSP Alignment
- [ ] Countdown for critical app migration → Migration milestone
- [ ] Security posture improvement → Security milestone
- [ ] Onboarding package → Foundational milestone
- [ ] EKS modernization → Operational Excellence milestone
- [ ] Cost optimization + SP → Cost Optimization milestone
- [ ] Windows EOS → Modernization milestone
- [ ] DevOps Agent → Innovation milestone

## Communication Patterns
- Monthly cadence call established (Waseem + Herbert + Niels regular attendees)
- First customer contact by Amar: Jun 25 (TAM Introduction meeting)
- Herbert = FinOps champion (responsive on cost topics)
- Waseem = decision-maker but busy with DC migration
- Niels = architecture discussions
- Team is BUSY with classic DC migration to new DC — limited bandwidth for new initiatives

## Research Notes
<!-- Auto-populated by weekly research agent -->
- **Dante data pulled Jun 25, 2026 (K2 — full org discovery):**
  - AWS Organization: 20 accounts. Payer = 391312048067
  - Key accounts: prod (810309093869), network (380407513324), drp (773801495808), iam, soc, audit
  - Partner systems: comarch-prod (550187681820), nrb-prod (211125406427)
  - **PRODUCTION (810309093869, eu-central-1):** 24 running EC2 instances
    - Types: t3.large (4), t3.medium (3), r7i.xlarge (3), r6i.large (3), r5.xlarge (3), m5.2xlarge (3), r7i.large (2), m6a.2xlarge (2), t3.small (1)
    - ⚠️ **2 WINDOWS instances** → EOS migration confirmed
    - Fleet is mostly current-gen (r7i, r6i, m6a) — good posture
  - **NETWORK (380407513324, eu-central-1):** 5 VPN connections, ALL 10 tunnels UP ✅
  - **DRP account exists** (773801495808) → DR capability built in
  - Region: eu-central-1 (Frankfurt) — Belgian data residency compliance
- **From handover docs (Ketan + Vedanth, Apr 2025 – May 2026):**
  - Monthly spend: EC2 $23K, EC2-Other $12K, RDS $8K
  - Marketing Cloud appeared May 2025 ($7.8K/mo — new cost)
  - EKS costs dropped 39% Apr→May 2025
  - Herbert actively right-sizing instances (target: done by end May/early Jun 2026)
  - 69 Lambda functions on deprecated Python — fix was due "next Wednesday" from May 29
  - Unrestricted SGs shared with customer Apr 2026
  - Non-prod accounts to skip: byld (897821664052), test (470327177302), sandbox (994251648509)
  - No EDP or PPA. Customer on NDA.
  - 685 on-prem servers mentioned but migration paused (VMware licensing)
  - Databases stuck due to licensing — cannot move to AWS yet
- Command Centre access pending (Nick requested from Russell)
