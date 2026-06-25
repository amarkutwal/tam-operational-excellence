# Strategic Intelligence: Yenlo Cloud Services B.V.
> Auto-updated by tam-weekly-research agent | Last refresh: 2026-06-25

## Customer Context
- **Industry:** Technology / Integration Services (iPaaS, API Management, IAM)
- **AWS Maturity:** ESTABLISHED
- **Key Contacts:** Geert Timmermans, Randima Somathilaka, Pumudu
- **Key Platform:** Connext Platform (iPaaS offering)
- **Previous TAM:** Kevin Mason
- **Private Pricing:** Active PPA commitment

## Active Signals
| Signal | Category | Date Detected | Priority |
|--------|----------|---------------|----------|
| Workload Overview sessions completed (Jun 16 + Jun 23) | Discovery | 2026-06-23 | HIGH |
| Private Pricing engagement active | Commercial | 2026-06 | MEDIUM |
| Pumudu requested Connext deep dive session (Mon/Tue) | Engagement | 2026-06-16 | HIGH |
| Security/CFM/AI Ops baselines MISSING — Nick escalated | Compliance | 2026-06-25 | HIGH |
| Connext Platform deep dive completed | Architecture | 2026-06 | HIGH |
| Security reporting interest (Bedrock) | Adoption | 2026-06 | HIGH |
| FinOps Agent deployment opportunity — EOP model validated by Chetan Jun 24; Yenlo has cost optimization focus (PPA) | Cost/AI | 2026-06-24 | MEDIUM |
| Elastic Cloud via Marketplace (counts toward PPA!) | Commercial | 2026-06-23 | LOW |
| Harbor registry instead of ECR — potential migration opportunity | Modernization | 2026-06-23 | LOW |

## Strategic Opportunities
### 1. Well-Architected Review — Connext Platform (HIGH)
- **Signal:** Workload Overview sessions completed. Full architecture now understood (EKS + RDS MySQL + EFS + Harbor + Elastic).
- **Engagement:** Full WAR for Connext Platform — focus on reliability + security pillars
- **Expected Impact:** Architecture improvements, confidence in platform for their customers
- **Timeline:** July 2026 (post-workload sessions)

### 2. Security Reporting with Amazon Bedrock (HIGH)
- **Signal:** Pumudu confirmed interest in AI-powered periodic security reports for enterprise customers (banks, visa processors). Optional feature — some customers don't want AI.
- **Engagement:** PoC / workshop — Bedrock-powered security finding aggregation and reporting
- **Expected Impact:** Innovation showcase, new revenue feature for Yenlo's platform
- **Timeline:** July-August 2026

### 3. re:Invent 2026 Registration (MEDIUM)
- **Signal:** Registration opened. Key contacts should attend for roadmap visibility.
- **Engagement:** Invite Geert + Randima to re:Invent. Propose breakout session alignment.
- **Expected Impact:** Executive relationship deepening, roadmap alignment
- **Timeline:** Send invite this week

### 4. ECR Migration from Harbor (LOW)
- **Signal:** Yenlo uses Harbor registry because ECR cross-account replication was complex when they set up. ECR has improved since then.
- **Engagement:** Assess ECR cross-account replication capabilities vs Harbor maintenance overhead
- **Expected Impact:** Reduce operational burden (self-hosted Harbor on EC2 → managed ECR)
- **Timeline:** Q4 2026 (not urgent — Harbor works fine today)

## SSP Alignment
- [ ] WAR for Connext → Operational Excellence milestone
- [ ] Bedrock security PoC → Innovation milestone
- [ ] re:Invent attendance → Relationship/Trust milestone
- [ ] ECR assessment → Modernization milestone (future)

## Communication Patterns
- Monthly cadence call (active, Randima accepted)
- Pumudu DECLINED cadence invite (Jun 9) — asked to reschedule to Mondays/Tuesdays
- John Ruivenkamp, Anushka Samaranayake, Renée van Brummelen also accepted cadence
- Workload sessions completed (2 sessions)
- TAM transition from Kevin Mason complete
- Geert is commercial contact, Randima is technical
- Renée van Brummelen = procurement contact (Claude Enterprise seats)

## Research Notes
<!-- Auto-populated by weekly research agent -->
- **Dante data pulled Jun 25, 2026 (K2):**
  - AWS Account: 090323100873
  - EC2: 0 instances in eu-west-1
  - CloudWatch Cross-Account migration pending (notifications received)
  - SpringClean warnings received for this account
  - Confirmed: running EKS + RDS MySQL + EFS (container workloads)
- **Workload Overview Session Architecture (Jun 23, 2026 — 55min with Pumudu):**
  - **Account structure:** Multi-account per customer. Each Yenlo customer gets:
    - 1 dedicated AWS account
    - 1 dedicated Elastic Cloud stack (monitoring)
    - 1 EKS cluster with workloads
    - Shared services account holds immutable container images
    - Control account = AWS Control Tower
  - **Connext Platform stack:**
    - Compute: EKS clusters (quarterly upgrades to match AWS releases)
    - Middleware: WSO2 workloads (primary), Python, Java Camel (custom)
    - Database: RDS MySQL (WSO2 preferred DB)
    - Storage: EFS (file persistence) + EBS (node storage)
    - Container registry: Harbor (NOT ECR — cross-account replication was complex at the time)
    - Images stored in shared services account (immutable, pulled by customer accounts)
  - **CI/CD:**
    - Bitbucket Pipelines + Terraform
    - Custom "Customer Care Portal" (in-house UI that invokes CI/CD pipelines)
    - Portal reason: Terraform learning curve too steep for all support staff at scale
    - Audit trail: all actions logged (who logged in, who invoked what)
  - **Monitoring:**
    - Elastic Cloud (purchased via AWS Marketplace — counts toward PPA!)
    - Moved AWAY from CloudWatch (too expensive for their scale)
    - Per-customer Elastic stack with Kibana dashboards
    - Customers access monitoring via myConnects IDP → SSO into their Kibana
  - **Security:**
    - Per-customer isolation (separate AWS account, separate Elastic, no data mixing)
    - JWTs + certificate-based auth on API layer
    - myConnects = their own IDP (custom identity provider)
  - **Customers mentioned:** Brain Bay, Dutch police record system (government), enterprise banks
  - **Known issue:** Domain DNS recreation incident — Route53 config was accidentally wiped by IT changing a minor setting. Now strict controls in place.
  - **AI/Bedrock opportunity:** Periodic security reports for enterprise customers (optional). Banks/visa processors want periodic security posture updates. Bedrock can power this.
  - **Important note:** Some customers (banks) explicitly DO NOT want AI features — must be opt-in only.
- Claude Enterprise seats inquiry from Geert/Pumudu (Jun 1)
- Connext Platform architecture mapped during workload sessions
- **Week of Jun 25 update:**
  - Workload Overview Session 2 completed Jun 23 (55-min recording available)
  - Pumudu (Jun 16): "Please schedule Yenlo/Connext deep dive session, preferably Mon/Tue"
  - Alessandra sent PPA Commitment overview + Marketplace promotion to Pumudu (Jun 16)
  - Savings Plans discounts shared across all accounts by default — good news for Yenlo
  - Claude Enterprise seats: Renée eager to proceed (Jun 3), Alessandra handling
  - Anthropic purchased via AWS Marketplace (confirmed by Alessandra Jun 10)
  - ⚠️ ACTION: Schedule Connext deep dive with Pumudu on a Monday or Tuesday
  - ⚠️ Nick Majedi flagged: Security, CFM, AI Ops baselines ALL MISSING — due this week
