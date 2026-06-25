# Customer Journey: Yenlo Cloud Services B.V.
> TAM: Amar Kutwal | Started: May 2026 | Last updated: June 25, 2026

## Customer Overview
- **Company:** Yenlo Cloud Services B.V.
- **Industry:** Technology / Integration Services (iPaaS, API Management, IAM)
- **AWS Maturity:** ESTABLISHED
- **Monthly Spend:** TBD (PPA active, significant Elastic Cloud via Marketplace)
- **Key Contacts:** Geert Timmermans (commercial), Randima Somathilaka (technical), Pumudu (platform lead)
- **Other contacts:** Renée van Brummelen (procurement), John Ruivenkamp, Anushka Samaranayake
- **Previous TAM:** Kevin Mason
- **AWS Account:** 090323100873 (+ 130+ customer accounts)
- **Region:** eu-west-1
- **Key Platform:** Connext (iPaaS offering built on AWS)
- **Private Pricing:** Active PPA commitment

## Connext Platform Architecture (from Workload Session Jun 23)
| Layer | Technology |
|-------|-----------|
| Compute | EKS (quarterly upgrades) |
| Middleware | WSO2, Python, Java Camel |
| Database | RDS MySQL |
| Storage | EFS (persistence) + EBS (nodes) |
| Container Registry | Harbor (shared services account) |
| CI/CD | Bitbucket + Terraform + Customer Care Portal (custom) |
| Monitoring | Elastic Cloud (via Marketplace, replaces CloudWatch) |
| Identity | myConnects (custom IDP) |
| Security | Per-customer isolation, JWTs, certificates |

## Timeline

### May 2026 — Handover from Kevin Mason
- **Status when I took over:** Active customer, PPA in place, Connext Platform is their core product.
- **Handover from:** Kevin Mason
- **Initial priorities identified:**
  - Understand Connext Platform architecture
  - Continue PPA/commercial relationship
  - Explore innovation opportunities (Bedrock)

### June 2026 — Deep Engagement
- Workload Overview Session 1 completed (Jun 16)
- Workload Overview Session 2 completed (Jun 23) — 55-min recording
- Pumudu requested Connext deep dive (prefers Mon/Tue)
- Interest in Bedrock for security reporting
- Claude Enterprise seats: Renée proceeding (via Marketplace)
- Anthropic purchase confirmed via AWS Marketplace (Jun 10)
- Alessandra shared PPA Commitment overview + Marketplace promo (Jun 16)
- Monthly cadence call established (Randima accepted)
- Pumudu declined cadence invite — prefers Mon/Tue scheduling

#### Workload Overview Session 2 — Architecture Deep Dive (Jun 23)
- **Attendees:** Amar (TAM), Pumudu (Platform Lead)
- **Key architecture confirmed:**
  - EKS clusters with quarterly upgrades
  - RDS MySQL + EFS + EBS for persistence
  - Harbor container registry (shared services account) — not ECR
  - Elastic Cloud for monitoring (via Marketplace, replaced CloudWatch due to cost)
  - Custom "Customer Care Portal" for CI/CD (abstracts Terraform complexity)
  - Per-customer isolation: each customer gets own AWS account + own Elastic stack
  - WSO2 middleware + Python + Java Camel workloads
  - myConnects IDP for customer SSO
- **Issues discussed:** DNS recreation incident (Route53 config wiped by IT — now mitigated with strict controls)
- **Opportunity confirmed:** Bedrock for periodic security reports (optional, for regulated customers)
- **Important:** Banks/regulated customers explicitly don't want AI — feature must be opt-in
- **Customers on the platform:** Brain Bay, Dutch police (government), enterprise banks
- **55-minute recording saved:** `customers/yenlo/infrastructure/GMT20260623-073745_Recording_gallery_2560x1440.mp4`

## Current State (as of June 2026)
- **Active engagements:** Workload sessions done, Connext deep dive next, PPA active
- **Open action items:** Schedule Connext deep dive (Mon/Tue), WAR planning
- **Strategic opportunities:**
  1. Well-Architected Review for Connext Platform (HIGH)
  2. Bedrock security reporting PoC (HIGH)
  3. re:Invent 2026 invitation (MEDIUM)
  4. ECR migration from Harbor (LOW — future)
- **Health/Risk indicators:** Healthy engagement. Good momentum.

## Goals (Next 6 months)
- [ ] Deliver Well-Architected Review for Connext (July)
- [ ] Bedrock security reporting PoC (July-August)
- [ ] Invite key contacts to re:Invent 2026
- [ ] Complete first SSP with innovation milestones
- [ ] Deepen Pumudu relationship (platform lead = key technical decision maker)
- [ ] Assess ECR migration from Harbor (Q4)

## Impact Log
| Date | Action | Impact | Evidence |
|------|--------|--------|----------|
| Jun 16, 2026 | Workload Overview Session 1 | Connext architecture understood | Recording available |
| Jun 23, 2026 | Workload Overview Session 2 | Full platform stack documented (EKS/RDS/EFS/Harbor/Elastic) | 55-min recording + transcription |
| Jun 10, 2026 | Claude Enterprise (Marketplace) | Customer using Anthropic via AWS | Alessandra confirmation |
| Jun 25, 2026 | Dante pull | Account mapped (090323100873) | K2 data |

## Notes for Future Reference
- Yenlo is a technology/platform company — they SELL a platform (Connext) built on AWS
- WAR here helps their customers indirectly — very high leverage
- Pumudu is the key technical stakeholder — schedule around his availability (Mon/Tue)
- Geert handles commercial, Randima handles operational, Renée handles procurement
- Private Pricing (PPA) means commercial relationship is strong — maintain it
- Elastic Cloud purchase via Marketplace counts toward PPA — important commercial point!
- Harbor is self-hosted on EC2 — potential ECR migration when cross-account replication matures
- Some Yenlo customers (banks) DO NOT want AI — Bedrock features must be opt-in
- CloudWatch was too expensive for their scale — moved to Elastic. Don't propose CloudWatch solutions.
- 130+ AWS accounts (one per Yenlo customer) — this is a big platform operation
- Kevin Mason may have useful historical context — consider reaching out
