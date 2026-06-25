# Strategic Intelligence: P&V Assurances
> Auto-updated by tam-weekly-research agent | Last refresh: 2026-06-25

## Customer Context
- **Industry:** Insurance / Financial Services
- **AWS Maturity:** EARLY (new ES customer Jun 2026)
- **Key Contact:** TBD (handover from Vedanth)
- **Previous TAM:** Vedanth Gopal Reddy Hanumapur
- **Slack Channel:** #aws-p-and-v-account-team
- **Command Centre:** Access requested by Nick (pending Russell Warne)

## Active Signals
| Signal | Category | Date Detected | Priority |
|--------|----------|---------------|----------|
| New customer — just onboarded Jun 2026 | Onboarding | 2026-06 | HIGH |
| VPN health alerts active | Resilience | 2026-06 | HIGH |
| TAM Introduction meeting TODAY (Jun 25, 4 PM) | Onboarding | 2026-06-25 | HIGH |
| Security/CFM/AI Ops baselines MISSING — Nick escalated | Compliance | 2026-06-25 | HIGH |
| Windows End-of-Support flagged | EOS/EOL | 2026-06 | MEDIUM |
| CHI score needs baseline | Risk | 2026-06 | MEDIUM |

## Strategic Opportunities
### 1. VPN Redundancy Fix (HIGH)
- **Signal:** Active VPN health alerts. Single point of failure risk for an insurance company.
- **Engagement:** Infrastructure review → VPN resilience fix (SHIP engagement)
- **Expected Impact:** Eliminate critical SPoF, demonstrate immediate ES value
- **Timeline:** First 30 days (priority for new customer)

### 2. Windows End-of-Support Migration (MEDIUM)
- **Signal:** Windows EOS flagged in health events
- **Engagement:** Migration planning session → MAP/SHIP engagement for Windows modernization
- **Expected Impact:** Compliance (insurance regulatory requirements), reduced risk
- **Timeline:** Q3 2026 (plan now, execute Q3-Q4)

### 3. Onboarding Excellence Package (HIGH)
- **Signal:** Brand new ES customer. First impressions matter.
- **Engagement:** Full onboarding: TAR, CHI baseline, ES features walkthrough, first SSP draft
- **Expected Impact:** Strong relationship foundation, quick value demonstration
- **Timeline:** First 60 days

### 4. Disaster Recovery Assessment (MEDIUM)
- **Signal:** Insurance company = regulated. DR/BCP is mandatory.
- **Engagement:** DR assessment / SHIP engagement for resilience
- **Expected Impact:** Compliance alignment, trust building with security/compliance team
- **Timeline:** Q3 2026

## SSP Alignment
- [ ] VPN fix → Resilience milestone
- [ ] Windows migration → Modernization milestone
- [ ] Onboarding package → Foundational milestone
- [ ] DR assessment → Resilience/Compliance milestone

## Communication Patterns
- Slack channel active (#aws-p-and-v-account-team)
- Shailesh Jain welcomed Amar (Jun 19) — asked about internal intro call
- Internal alignment call set up — Shailesh + Bassem attending
- TAM Introduction meeting: Jun 25 at 4:00 PM (Amar organizing)
- Handover from Vedanth in progress
- Vedanth shared P&V folder (Jun 5) and sent May cadence call follow-up (Jun 3)
- Cadence call to be established

## Research Notes
<!-- Auto-populated by weekly research agent -->
- **Dante data pulled Jun 25, 2026 (K2 — full org discovery):**
  - AWS Organization: 20 accounts! Payer = 391312048067 (P&V group prod environment)
  - Key accounts: prod (810309093869), network (380407513324), drp (773801495808), iam, soc, audit
  - Partner systems: comarch-prod/accp/cab, nrb-prod/cab/accp
  - **PRODUCTION (810309093869, eu-central-1):** 24 running EC2 instances
    - Types: t3.large (4), t3.medium (3), r7i.xlarge (3), r6i.large (3), r5.xlarge (3), m5.2xlarge (3), r7i.large (2), m6a.2xlarge (2), t3.small (1)
    - ⚠️ **2 WINDOWS instances** → EOS migration opportunity CONFIRMED
    - Fleet is mostly current-gen (r7i, r6i, m6a) — good modernization posture
  - **NETWORK (380407513324, eu-central-1):** 5 VPN connections, ALL 10 tunnels UP ✅
    - Previous VPN health alerts may be resolved or from a different timeframe
  - **DRP account exists** (773801495808) → DR capability built in
  - Region: eu-central-1 (Frankfurt) — makes sense for Belgian insurance company
- Command Centre access pending (Nick requested from Russell)
- Regulatory requirements TBD (insurance = heavy compliance)
- **Updated strategic priorities based on Dante:**
  - Windows EOS migration → CONFIRMED (2 instances in prod)
  - VPN resilience → RESOLVED (all 10 tunnels UP as of Jun 24)
  - Onboarding excellence → still top priority (new customer)
- **Week of Jun 25 update:**
  - TAM Introduction meeting TODAY at 4:00–4:30 PM (Zoom)
  - Internal team: Shailesh Jain + Bassem confirmed for alignment call
  - Vedanth's May cadence call included Trusted Advisor report (attached Jun 3)
  - No direct customer contact yet — first meeting is today
  - ⚠️ Nick Majedi flagged: Security, CFM, AI Ops baselines ALL MISSING — due this week
