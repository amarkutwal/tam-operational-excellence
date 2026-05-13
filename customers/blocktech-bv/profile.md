# Customer Profile: BlockTech B.V.

## Overview
- **Short Name:** blocktech-bv
- **SFDC Account ID:** 0014z00001jOAvqAAG
- **Website:** block-tech.io
- **Support Plan:** Enterprise (transitioned from EoP)
- **Primary TAM:** Amar Kutwal (akkutwal)
- **Previous TAM:** Suleman Haffejee (haffejs) — handover completed May 12
- **Account Manager:** Magfried Janga (magjanga) — took over Jan 2026 from Marcela
- **Solutions Architect:** Sercan Karaoglu (sercanka) — active on all technical threads
- **ESM:** Hennie Pretorius (pretoh)
- **Region:** EMEA — Europe-North — Benelux
- **Territory:** NAMED-AGS-EMEA-Europe-North-Benelux-CS-ENT-CROSS-ENG-AM-44
- **Territory Manager:** Marcel Evers
- **Sales Coverage Motion:** Focus

## Company Info
- **Legal Name:** BlockTech B.V.
- **Industry:** Blockchain / Cryptocurrency Trading (Market Maker)
- **Sub-Industry:** Algorithmic Trading, High-Frequency Trading (HFT)
- **Core Business:** Algorithmic trading of Bitcoin/Ethereum options, futures, and spot markets. Direct Counterparty Trading (DCT) platform for institutional investors.
- **Location:** Amsterdam, Netherlands
- **Employees:** ~10-50 (small trading firm)
- **Ownership:** Private
- **Adoption Phase:** RAMPING
- **NDA:** Mutual Signed (Feb 27, 2025) — receiving weekly NDA roadmap emails
- **Multi-Cloud:** Hybrid — on-prem + AWS. Trading infra spans both.
- **Compliance:** Financial services regulations (MiFID II likely, given EU trading)
- **Customer Sentiment:** Positive but pragmatic
- **Time Zone:** CET (Netherlands)
- **Geographic Presence:** Tokyo, Singapore, London, Frankfurt (expanding), US North Virginia (planned Q2)

## Key Customer Contacts

| Name | Role | Email | Cadence? | AWS Depth | Roadmap? |
|------|------|-------|----------|-----------|----------|
| Sander van Schie | Cloud Architect | sschie@block-tech.io | Yes | AWS Proficient | Yes |
| Team DL | NetOps | netops@block-tech.io | — | — | — |

## Cadence
- **Frequency:** Bi-weekly
- **Established:** April 2026 (owned by Magfried/AM)
- **Attendees:** Sander, Magfried, Sercan, TAM

## Financial Overview (AWS)
- **Monthly Spend:** ~$107,870/mo (incl. tax) / ~$90,500/mo (excl. tax)
- **Total Addressable Spend (TAS):** $2,201,829
- **Trailing 12-Month Revenue:** $1,101,159
- **Compute Savings Plan:** $36,000/month committed
- **Health Score:** 50.91 / 100 (average)
- **9 AWS Accounts**

## Architecture — Spend Breakdown

| Layer | Monthly ($) | % | Description |
|-------|------------|---|-------------|
| Compute | $42,909 | 47% | Bare metal (c7i.metal, c8a, c8i) + Compute SP |
| Networking | $38,052 | 42% | Direct Connect ($22.5K) + VPC ($10.4K) + EC2-Other ($5.2K) |
| Support | $8,228 | 9% | Enterprise Support |
| Storage | $920 | 1% | S3 |
| Observability + Security | $340 | <1% | CloudWatch + Security Hub |

## Instance Fleet (Running)

| Instance Type | Count | Region | Account | vCPUs |
|---|---|---|---|---|
| c7i.metal-24xl | 1 | eu-central-1 | wkl-trading-acc | 96 |
| c7i.metal-24xl | 1 | eu-central-1 | wkl-trading-prod | 96 |
| c7i.metal-48xl | 1 | ap-southeast-1 | wkl-trading-acc | 192 |
| c7i.metal-48xl | 1 | ap-southeast-1 | wkl-trading-prod | 192 |
| c8i.16xlarge | 2 | ap-southeast-1 | acc + prod | 64 each |
| c8a.2xlarge | 1 | eu-west-1 | wkl-trading-acc | 8 |
| m8a.xlarge | 3 | ap-northeast-1 | wkl-playground | 4 each |
| t3.medium | 1 | ap-northeast-1 | wkl-playground | 2 |

**Primary Regions:** eu-central-1 (Frankfurt), ap-southeast-1 (Singapore), eu-west-1 (Ireland), ap-northeast-1 (Tokyo — expanding)

## Current Status (from TRP document)
- Operating in **hybrid setup** (on-prem + AWS)
- Present in **Tokyo, Singapore, and London**
- Using **Prometheus and Grafana** for observability
- Planned expansion to **Frankfurt** and **US North Virginia (Q2)**
- HFT client considerations driving infrastructure decisions

## Major Customer Initiatives (from TRP document)

### Geographic Expansion (High Priority)
- Frankfurt deployment
- US North Virginia (us-east-1) implementation in Q2
- Network optimization for HFT clients

### Cloud Security & Operations (Critical)
- AWS Organizations implementation needed
- Root user access remediation (security concern)
- Account segregation strategy
- Documentation for guidance
- Security Improvement Program (SIP)
- Cloud Operations Accelerator program

### Infrastructure Optimization (High Priority)
- Instance reservation planning
- Instance type evaluation and testing
- Bare metal vs large instance performance testing

### Networking Enhancement
- Transit Gateway implementation
- Virtual private gateway setup
- EC2 networking optimization
- CloudFlare integration via AWS Marketplace

### Monitoring & Observability
- Evaluation of AWS native solutions (vs current Prometheus/Grafana)
- Current Prometheus/Grafana setup assessment
- Potential AWS AppStream implementation

## Outstanding Items (Inherited from Suleman)

| # | Topic | Status | Owner | Next Step |
|---|-------|--------|-------|-----------|
| 1 | Serial Console/GRUB on Bare Metal | OPEN 4+ months | Nitro team (via Gaurav) | Magfried reached out Apr 21. No response. Tickets: D346025060, P353581553 |
| 2 | PTP Hardware Clock (SIN + FRA) | Confirmed | Julia Rhodes (AWS) | End-of-Q2 2026 timeline. Share with Sander. |
| 3 | c8a GA in Singapore | Waiting | EC2 team (Anuj Purohit) | PFR created ($120K ARR). No GA timeline confirmed. |
| 4 | OKX Tokyo Migration (Countdown) | In progress | Magfried / Sander | 2x c8a.metal-24xl reserved. Target: late June 2026. |

## PFRs (Product Feature Requests)

| PFR | Description | Status |
|-----|-------------|--------|
| c8a/m8a in Singapore | AMD instances not yet GA in ap-southeast-1. Customer using c7i/c8i wants to migrate for performance gains. | Submitted ($120K ARR) |
| GRUB via Serial Console | GRUB bootloader inaccessible via Serial Console on x86 Gen7+ bare metal (c7i.metal, m8a.metal) due to Legacy BIOS boot mode limitations. | Open |
| PTP in Singapore | HW timestamping needed for crypto exchanges and HFTs in Singapore. | On Roadmap |
| PTP in Frankfurt | HW timestamping (nanosecond granularity) needed for latency-sensitive trading applications. | On Roadmap |

## Upcoming Events

| Event | Timeline | Detail |
|-------|----------|--------|
| OKX Migration to Tokyo | Late June 2026 | 2x c8a.metal-24xl capacity reserved. Selective AWS Countdown support. |
| PTP Hardware Clock (SIN + FRA) | End of Q2 2026 | Julia Rhodes confirmed launch. |
| c8a GA in Singapore | Unknown | PFR submitted ($120K ARR). No timeline from EC2 team. |
| M8azn Preview | Active | Customer enrolled. Awaiting GA. |
| US North Virginia Deployment | Q2 2026 | Geographic expansion for HFT clients |
| Frankfurt Deployment | Planned | Geographic expansion |

## Cadence Notes History (from Suleman)

### April 2026
| Topic | Detail | Outcome |
|-------|--------|---------|
| AMD Singapore — Assisted CR Declined | Provided guidance on constraints. Sander declined Apr 7: "too many risks, will wait for GA." | Customer declined assisted CR. Waiting for GA. |
| AMD Singapore — PFR + FOOB | Magfried escalated to Gaurav. Anuj confirmed "no plans to launch c8a in SIN." Sercan created PFR with $120K ARR. | PFR created. FOOB declined by customer. Advocating for GA. |
| AWS Countdown — OKX Tokyo | Sander confirmed 2x c8a.metal-24xl needed. Capacity reservations approved. Selective Countdown support agreed. | Capacity confirmed. Countdown — selective use agreed. |
| PTP Hardware Clock | Julia Rhodes confirmed Apr 30: end of Q2 2026 timeline can be shared. | Timeline confirmed. Can share with customer. |
| Serial Console/GRUB | Still pending Nitro team feature expansion. | Still awaiting feature expansion. |

### March 2026
| Topic | Detail | Outcome |
|-------|--------|---------|
| EC2 M8azn Preview | Gaurav Sharma enrolled Sander in M8azn private preview — low-latency networking variant of M8a. | Customer enrolled in M8azn private preview. |
| AMD Instances in Singapore | Sander requested c8a in ap-southeast-1. Needs: 2x c8a.metal-24xl, 2x c8a.8xlarge, 2x c8a.large. PFR submitted. Assisted CR offered as interim. | PFR submitted. Assisted CR offered. Customer questions raised. |
| OKX Migration to Tokyo | Magfried proposed AWS Countdown. Offered operational readiness evaluation, Graviton migration, capacity planning. | Countdown proposed. Discussed in April. |

### February 2026
| Topic | Detail | Outcome |
|-------|--------|---------|
| Steady state | Roadmap emails + automated case summary reports. No major customer-initiated threads. | Ongoing BAU. |

### January 2026
| Topic | Detail | Outcome |
|-------|--------|---------|
| AM Onboarding | Magfried onboarded as new AM. | Warm handover from Marcela completed. |
| Serial Console/GRUB Issue | BlockTech reported inability to access Serial Console/GRUB on bare metal during boot. Escalated to EC2 Serial Console team (D346025060) and Nitro µEMU team (P353581553). | Escalated to Nitro team. |
| Direct Connect Public IP Space | Sander raised issue with public IP space for Direct Connect public virtual interface. | Resolved. |

### December 2025
| Topic | Detail | Outcome |
|-------|--------|---------|
| AM Transition | Marcela → Magfried handover. | Warm handover completed. Magfried confirmed as new AM. |

### 2025 (Earlier)
- Direct Connect / BGP / Network Optimization work

## Strategic Goals (Customer)
1. Scale trading operations across additional exchanges and asset classes
2. Maintain competitive edge through technology-driven trading systems
3. Optimize network infrastructure for minimal latency
4. Expand institutional trading (DCT) offering to new partners worldwide

## Account Team (Full)

| Role | Name | Alias | Notes |
|------|------|-------|-------|
| Account Manager | Magfried Janga | magjanga | Took over Jan 2026 from Marcela. Netherlands. |
| Solutions Architect | Sercan Karaoglu | sercanka | Amsterdam. Active on all technical threads. Created PFR for c8a SIN. |
| TAM (Primary) | Amar Kutwal | akkutwal | Took over May 2026 from Suleman. |
| ESM | Hennie Pretorius | pretoh | Cape Town. |
| Partner Sales Manager | Arthur Van grinsven | arthurvg | |
| GenAI Sales Lead | Guy Kfir | kfir | |
| ProServe Account Exec | Marius Steenkamp | mdsteen | |
| ISV Success Manager | Sudharsan Narayanan | sudharna | |
| Previous Account Owner | Aslihan Kurt | aslikurt | May have historical context |

## Key Observations for TAM Engagement
1. **Latency is everything** — this is an HFT firm. Every millisecond matters.
2. **Bare metal focus** — they run on metal instances, not standard EC2. Unique support needs.
3. **Active PFRs** — 4 open PFRs, customer is engaged with AWS product teams directly.
4. **Hybrid architecture** — on-prem + AWS, so networking (Direct Connect, BGP) is critical.
5. **Small team, high technical depth** — Sander is the key contact and is AWS proficient.
6. **Expanding to Tokyo** — OKX migration is the next big event (June 2026).
7. **Security gaps** — AWS Organizations not implemented, root user access concerns, account segregation needed.
8. **Observability opportunity** — Currently on Prometheus/Grafana, evaluating AWS native solutions.
9. **US expansion planned** — North Virginia deployment in Q2 for HFT clients.
10. **CloudFlare integration** — Looking at AWS Marketplace for CloudFlare.

## Immediate TAM Priorities (First 30 Days)
1. **Follow up on Serial Console/GRUB** — open 4+ months, shows you're on top of inherited items
2. **Share PTP timeline with Sander** — Julia confirmed end-Q2, customer is waiting for this info
3. **Understand OKX Tokyo migration** — late June deadline, ensure Countdown support is on track
4. **Discuss AWS Organizations** — critical security gap, offer guidance
5. **Root user access remediation** — security risk, offer SIP enrollment
6. **Build SSP** — align milestones to their geographic expansion + security initiatives

## Notes
- Customer was previously managed by Suleman (Cape Town) — now transferring to Amar (Benelux)
- Bi-weekly cadence already established by AM Magfried
- Customer is pragmatic — they appreciate technical depth and fast responses
- Serial Console/GRUB issue has been open 4+ months — follow up is important for trust
- TRP appears to be an internal project/codename used in planning documents
