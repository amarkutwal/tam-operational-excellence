# Strategic Intelligence: P&V Assurances
> Auto-updated by tam-weekly-research agent | Last refresh: 2026-06-24

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
- Handover from Vedanth in progress
- Nick involved in account setup
- Cadence call to be established

## Research Notes
<!-- Auto-populated by weekly research agent -->
- **Dante data pulled Jun 25, 2026 (K2):**
  - AWS Account: 391312048067
  - EC2: 0 instances in eu-west-1, eu-central-1
  - VPN: 0 connections in eu-west-1, eu-central-1
  - **Account appears to be org/management account — workloads likely in linked accounts**
  - VPN health alerts came from a different linked account (need to identify via Organizations)
- Command Centre access pending (Nick requested from Russell)
- Regulatory requirements TBD (insurance = heavy compliance)
- Next: Use Organizations API to list linked accounts and find the workload accounts
