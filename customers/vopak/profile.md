# Customer Profile: Vopak

## Overview
- **Short Name:** vopak
- **Domain:** eop.vopak.com
- **Support Plan:** Enterprise On-Ramp (Resold via partner InQdo)
- **Primary TAM:** Amar Kutwal (akkutwal)
- **Previous TAMs:** Krishna Teja Manyam (tmanyam) → Amanda Doyle (doyleama, Feb 2026)
- **Account Manager:** Erik de Jager (erikdj@amazon.nl)
- **Solutions Architect:** Julia Kokorina (julikona@amazon.nl) — very engaged
- **ESM:** Russell Warne (warnier@amazon.com)
- **Region:** EMEA / North / Benelux
- **Segment:** ENT Large
- **Transfer Date:** May 11, 2026

## Company Info
- **Full Name:** Royal Vopak (Koninklijke Vopak N.V.)
- **Industry:** Manufacturing / Energy & Utilities / Chemicals
- **Core Business:** Global tank storage provider — stores and handles chemicals, oil, gases, LNG, and biofuels
- **HQ:** Rotterdam, Netherlands
- **Employees:** ~6,000+ globally
- **Publicly Traded:** Yes (Euronext Amsterdam: VPK)
- **Time Zone:** CET (Netherlands)

## ⚠️ CRITICAL: Partner Relationship Rules

> **DO NOT share AWS cost optimization numbers directly with Vopak.**
> InQdo adds a fee on top of AWS pricing — your numbers will NOT match what Vopak pays InQdo.

1. TAM deals with Vopak **DIRECTLY** for technical engagement
2. **Invite Dennes Meeusen (InQdo)** to ALL monthly cadence calls
3. **Do NOT share cost numbers** (SP savings, right-sizing amounts, etc.) with Vopak
4. Keep InQdo (Dennes) in the loop on all communications
5. InQdo manages the AWS accounts (inqdo.com email addresses on all accounts)
6. **Contract renewal: November 2026** — coordinate with Erik (AM)

## Key Customer Contacts

| Name | Role | Email | Notes |
|------|------|-------|-------|
| **Marcel Drost** | IT Engineer | marcel.drost@vopak.com | Primary cadence contact, +31657044659. Pragmatic and direct. |
| **Pascal Valentin** | Director Infra & Network Services | pascal.valentin@vopak.com | Decision-maker for commitments/SP/budget |
| **Jeff van Eek** | Platform System Architect | jeff.van.eek@vopak.com | Security lead, interested in Outposts, frustrated with governance gaps |
| **Raymond van den Houwen** | Unknown | raymond.van.den.houwen@vopak.com | Invited to cadence, often declines |
| **Rob Boudestijn** | CIO (new) | — | Joined Aug 2025, transitioned from Singapore |
| **Roel Pot** | Director Data & Analytics | — | GenAI/legal doc automation interest |

## Key Partner Contacts (InQdo)

| Name | Role | Email | Phone |
|------|------|-------|-------|
| **Dennes Meeusen** | Technical Contact | dennes.meeusen@inqdo.com | +31 6 3000 6226 |
| **Dennis van Bavel** | Commercial/PPA | dennis.vanbavel@inqdo.com | +31 6 51 526 213 |

## AWS Account Team

| Role | Name | Alias/Email |
|------|------|-------------|
| Account Manager | Erik de Jager | erikdj@amazon.nl |
| Solutions Architect | Julia Kokorina | julikona@amazon.nl |
| ESM (GTSS) | Russell Warne | warnier@amazon.com |
| Previous AM | Oscar Langeslag | olangesl@amazon.nl |

## Cadence
- **Frequency:** Monthly
- **Schedule:** 2nd Monday, 13:00 CET, 30 min via Zoom
- **Attendees:** Marcel Drost, Dennes Meeusen (InQdo), TAM
- **Note:** Raymond and Dennes often decline but should still be invited per working agreement

## Financial Overview
- **Monthly Spend:** ~$70-95K (excl. Tax/Marketplace)
- **Payer Account:** 110544830261 (vopak-organization)
- **Total Accounts:** 31 (all Enterprise Support)
- **Contract:** PPA (resold via InQdo)
- **Contract Renewal:** November 2026
- **Savings Plan Status:** ⚠️ EXPIRED Feb 5, 2026 — ~$20K/mo on-demand waste since then
- **CHI Score:** 69.44 overall

### CHI Health Scores by Pillar

| Pillar | Score | Status |
|--------|-------|--------|
| Overall | 69.44 | 🟡 |
| Engagement | 100.0 | 🟢 |
| Service Limits | 99.99 | 🟢 |
| Security | 70.77 | 🟡 |
| Fault Tolerance | 73.26 | 🟡 |
| Operational Excellence | 61.28 | 🟡 |
| Performance | 60.79 | 🔴 Weak |
| Cost Optimizing | 53.75 | 🔴 Weakest |

## Cost Trend (Apr 2025 — Apr 2026)

| Month | Total (excl Tax/MP) | Notable |
|-------|--------------------:|---------|
| Apr 2025 | ~$73K | Baseline — SP at $24.9K |
| May 2025 | ~$76K | SentinelOne $204K one-time (MP) |
| Jun 2025 | ~$74K | Stable |
| Jul 2025 | ~$77K | Stable |
| Aug 2025 | ~$90K | Lambda spike to $12.6K |
| Sep 2025 | ~$85K | Lambda $7.1K, Bedrock $240 |
| Oct 2025 | ~$88K | GitLab $34.8K (MP), Lambda $4K |
| Nov 2025 | ~$86K | IoT spike to $1.3K, Lambda $6K |
| Dec 2025 | ~$92K | Tenable One $91.7K (MP) |
| Jan 2026 | ~$88K | WorkSpaces $868 (new) |
| Feb 2026 | ~$85K | ⚠️ SP expired — EC2 jumped to $20.7K |
| Mar 2026 | ~$95K | SP gone, EC2 $29.1K, ECS $2.5K (new) |
| Apr 2026 | ~$93K | EC2 $31.4K, ECS $2.5K, SP gone |

## AWS Accounts (31 total)

| Account ID | Name | Role |
|-----------|------|------|
| 110544830261 | vopak-organization | PAYER |
| 697587406271 | aws-inqdo-vopak-sharedservices | Linked |
| 074001687740 | aws-inqdo-royalvopak-network | Linked |
| 658548375185 | aws-inqdo-royalvopak-prd | Linked |
| 502471155071 | aws-inqdo-royalvopak-acc | Linked |
| 764504174900 | aws-inqdo-royalvopak-tst | Linked |
| 121834792211 | vopak-infra-dev | Linked |
| 043052276123 | aws-inqdo-royalvopak-iam | Linked |
| 746566487177 | vopak-integration-dev | Linked |
| 197395740918 | vopak-integration-acc | Linked |
| 893809970583 | vopak-integration-tst | Linked |
| 181005925274 | vopak-integration-prd | Linked |
| 774810453002 | vopak-integration-sandbox | Linked |
| 410011036331 | vopak-ds-prod | Linked |
| 637199819189 | vopak-ds-test | Linked |
| 520204914696 | vopak-ds-devtest | Linked |
| 255756177780 | vopak-ds-preprod | Linked |
| 626635449212 | inqdo-cloud-vopak-ds-sandbox | Linked |
| 571216030809 | vopak-edge-prd | Linked |
| 384509405688 | vopak-edge-acc | Linked |
| 244305868173 | vopak-edge-tst | Linked |
| 407281489721 | vopak-edge-dev | Linked |
| 381491971027 | vopak-liquin-prd | Linked |
| 975050205084 | vopak-liquin-acc | Linked |
| 438905546835 | vopak-devops-prd | Linked |
| 950297194603 | vopak-devops-acc | Linked |
| 141536537496 | vopak-devops-tst | Linked |
| 041627924617 | vopak-devops-dev | Linked |
| 318738245937 | aws-inqdo-vopak-vdc | Linked |
| 920794739384 | aws-inqdo-vopak-test | Linked |
| 529088261422 | vopak-infra-backup | Linked |
| 090095529340 | aws-inqdo-royalvopak-audit | Linked |

## Key Services & Architecture

| Category | Services | Notes |
|----------|----------|-------|
| Compute | EC2 (heavy), Fargate/ECS, Lambda (538 functions) | Lambda growing rapidly |
| Networking | VPN (heavy), Direct Connect, VPC, FortiGate (MP) | Multiple tunnels across accounts |
| IoT | IoT Core, Greengrass v1, IoT Device Management | ⚠️ Greengrass v1 EOL Oct 2026 |
| Data | RDS (SQL Server), DynamoDB, OpenSearch, SageMaker Canvas, Glue, Kinesis Firehose | |
| Storage | S3 (~$4.5K/mo), FSx for Windows, EFS | |
| Security | WAF, Security Hub (recently enabled), AWS Config | |
| AI/ML | Bedrock (was Claude 3.5, migrated to Gemini), SageMaker, Textract, Comprehend | Anthropic blocker forced migration |
| End-user | AppStream 2.0 (AD auth), WorkSpaces | |
| Marketplace | MongoDB Atlas (~$24K/mo), FortiGate (~$6K/mo), GitLab, Tenable One, SentinelOne | |
| Regions | eu-west-1 (primary), ap-southeast-1, us-east-1 | |

## ⚠️ Open Action Items (URGENT)

| # | Item | Owner | Status | Urgency |
|---|------|-------|--------|---------|
| 1 | **Savings Plan renewal** — expired Feb 5, ~$20K/mo on-demand waste | Pascal/Erik/InQdo | Pending decision | 🔴 CRITICAL — bleeding money |
| 2 | **ECS Short ARN migration** (52 services, deadline passed Apr 4) | Marcel | In progress | 🟡 |
| 3 | **Lambda runtime upgrade** (538 functions on Python 3.9 deprecated) | Marcel via Hamid | Not started | 🟡 |
| 4 | **IoT Greengrass v1 EOL** (Oct 7, 2026) | Edge team | Not started | 🟡 Deadline approaching |
| 5 | **Storage Gateway VM deprecation** (Jun 30, 2026) | Network team | Not started | 🔴 Deadline soon |
| 6 | EC2 right-sizing (~$7K/mo savings opportunity) | Marcel/Jeff | Deprioritized by Marcel | 🟢 Low |
| 7 | **Security Improvement Programme (SIP)** | Jeff | In progress | 🟡 |
| 8 | Infrastructure standardisation / IaC governance | Jeff | Planning | 🟡 |
| 9 | Nutanix replacement evaluation (Outposts Server?) | Jeff | Exploring | 🟢 |
| 10 | DR/Resilience strategy (geopolitical concerns) | Jeff | Early discussion | 🟡 |
| 11 | **SIR Activation campaign** | TAM | NOT_STARTED | 🔴 Escalation Jun 1 |
| 12 | Data Resiliency Checkup campaign | TAM | NOT_STARTED | 🟡 |

## Support Cases Summary
- 25 cases since Jan 2025, ALL resolved. No open cases currently.
- Low case volume for 31 accounts.
- Heavy API Gateway quota increases (10 cases) — growing API-first architecture
- AppStream 2.0 auth issues (4 cases) — AD login, SAML problems
- Integration-dev most active case filer (5 cases)

## SIFT Insights (Key Highlights)

| Date | Title | Category |
|------|-------|----------|
| Mar 2026 | Forced LLM migration from Anthropic Claude to Google Gemini | Lowlight |
| Jan 2026 | Lambda cold starts Breakthrough | Highlight |
| Dec 2025 | AWS-InQdo Collaboration Strengthens Relationship | Highlight |
| Nov 2025 | GenAI Blocked by Anthropic | Blocker |
| Nov 2025 | Networking team Unblocked with Cloud WAN | Highlight |
| Nov 2025 | Legal Documentation Automation Solution | Observation |
| Oct 2025 | DynamoDB Service Disruption Impact | Lowlight |
| Aug 2025 | Network Infrastructure Modernization | Highlight |
| Aug 2025 | New incoming CIO (Rob Boudestijn) | Observation |

## Things to Know (from Krishna)

1. **Marcel** is pragmatic and direct — right-sizing is 'not a priority' for him; prefers Compute SP for flexibility
2. **Jeff** is frustrated with governance gaps — access issues, no tagging, no pipelines, dev accounts in prod OUs
3. **Pascal Valentin** is the budget decision-maker — SP/commitment decisions go through him + Erik + InQdo
4. **InQdo** manages all AWS accounts (all emails are @inqdo.com) — they are the technical partner
5. **Julia (SA)** is very engaged — lean on her for technical depth
6. **Dennes (InQdo)** often declines cadence calls but should still be invited per working agreement
7. **Raymond** is invited to cadence but consistently declines
8. Customer has **geopolitical/DR concerns** — Singapore region dependency, wants geographic zone flexibility
9. **GenAI:** Built 'Chat with Vopak' on Claude 3.5 Sonnet but forced to migrate to Google Gemini due to Anthropic reseller requirements
10. **New CIO (Rob Boudestijn)** joined Aug 2025 from Singapore — potential executive engagement opportunity

## Immediate TAM Priorities (First 30 Days)

1. **Introduce yourself to Marcel Drost** — primary contact. Monthly cadence: 2nd Monday, 13:00 CET
2. **Invite Dennes Meeusen (InQdo)** to cadence calls — agreed working model
3. **Follow up on Savings Plan renewal with Erik (AM)** — customer bleeding ~$20K/mo since Feb 5
4. **Address SIR Activation campaign** before Jun 1 escalation deadline
5. **Track IoT Greengrass v1 EOL** (Oct 7, 2026) — 4 edge accounts affected
6. **Storage Gateway VM deprecation** — Jun 30 deadline, check if network team is aware
7. **Coordinate with Jeff** on security/governance roadmap
8. **DO NOT share cost numbers** with Vopak directly — always go through InQdo pricing

## Communication Log (Recent)

| Date | Subject | Participants | Key Content |
|------|---------|-------------|-------------|
| 2026-05-07 | Meeting coordination | Erik → Krishna | |
| 2026-04-24 | Cadence Call May 11 accepted | Marcel | Confirmed next cadence |
| 2026-03-24 | Partner working agreement | Erik, Dennes, Dennis, Krishna, Julia | TAM direct OK, don't share numbers, invite InQdo |
| 2026-03-10 | TAM role in partner PPA | Erik → Krishna | Erik questioning TAM role |
| 2026-03-04 | AWS PPA meeting | Pascal → Krishna | PPA discussion |
| 2026-02-26 | SIP report | Julia → Krishna | Jeff asked for SIP report + Outposts info |
| 2026-02-16 | SP and InQdo cost explorer | Erik | Teams meeting about SP |
| 2026-02-13 | AWS Savings Plan Renewal | Erik → Pascal, Krishna, Julia, Marcel | Pascal acknowledged SP expiry |

## Notes
- This is a **partner-resold** account — different dynamics than direct Enterprise customers
- InQdo adds margin on top of AWS pricing — never share raw AWS cost data with customer
- PPA contract renewal in November 2026 — important milestone for AM (Erik)
- Customer has 31 accounts but low case volume — may indicate self-sufficiency or under-utilization of support
- Lambda usage grew from ~$60/mo to $12.6K/mo in one year — rapid serverless adoption
- Anthropic/Claude blocker forced them to Google Gemini — potential win-back opportunity if resolved
