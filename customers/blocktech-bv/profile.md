# Customer Profile: BlockTech B.V.

## Overview
- **Short Name:** blocktech-bv
- **SFDC Account ID:** 0014z00001jOAvqAAG
- **Website:** block-tech.io
- **Support Plan:** Enterprise
- **Primary TAM:** Amar Kutwal (akkutwal) — incoming transfer from haffejs (Suleman)
- **Previous TAM:** Suleman (haffejs) — handover meeting May 12
- **Account Manager:** Magfried Janga (magjanga)
- **Region:** EMEA — Europe-North — Benelux
- **Territory:** NAMED-AGS-EMEA-Europe-North-Benelux-CS-ENT-CROSS-ENG-AM-44
- **Territory Manager:** Marcel Evers
- **Sales Coverage Motion:** Focus

## Company Info
- **Legal Name:** BlockTech B.V.
- **Industry:** Financial Services (GTM) / Software & Internet (MDM)
- **Sub-Industry:** Software
- **Location:** Amsterdam, Netherlands
- **Employees:** 21 (external count) / 100-499 (company size category)
- **Annual Revenue:** $2.03M (company) / $7.76M (MDM site)
- **Ownership:** Private
- **Adoption Phase:** RAMPING
- **Segment:** ENT MIDSIZE
- **T-Shirt Size:** L
- **NDA:** Mutual Signed (Feb 27, 2025)

## Financial Overview (AWS)
- **Total Addressable Spend (TAS):** $2,201,829
- **Trailing 12-Month Revenue:** $1,101,159
- **Month-to-Date (May):** $18,377
- **Year-to-Date:** $393,016
- **Week-over-Week:** -8.1% (slight drop)
- **Health Score:** 50.91 / 100 (average)

## Top Services by Spend (Last 12 Months)

| # | Service | 12M Charge | 12M Revenue |
|---|---------|-----------|-------------|
| 1 | EC2 - Linux | $528,237 | $515,633 |
| 2 | Direct Connect | $232,738 | $232,738 |
| 3 | Transit Gateway | $112,924 | $112,924 |
| 4 | Enterprise Support | $98,560 | $98,560 |
| 5 | EC2 (other) | $76,224 | $76,224 |
| 6 | EBS | $23,612 | $23,612 |
| 7 | Data Transfer | $20,145 | $20,145 |
| 8 | NAT Gateway | $9,371 | $9,371 |
| 9 | PrivateLink | $3,412 | $3,412 |
| 10 | Public IPv4 Address | $2,257 | $2,257 |

### Key Observations
- **Heavily EC2-based workload** — EC2 (Linux + other) is ~57% of total spend
- **Significant networking spend** — Direct Connect ($233K) + Transit Gateway ($113K) = $346K/yr on networking
- **No containers (ECS/EKS)** — pure EC2 infrastructure
- **No managed databases visible in top 10** — likely self-managed on EC2
- **Enterprise Support** is 4th highest cost at $99K/yr

## Account Team

| Role | Name | Alias | Email |
|------|------|-------|-------|
| **Account Manager** | Magfried Janga | magjanga | magjanga@amazon.com |
| **Solutions Architect** | Sercan Karaoglu | sercanka | sercanka@amazon.nl |
| **Partner Sales Manager** | Arthur Van grinsven | arthurvg | arthurvg@amazon.nl |
| **ProServe Account Exec** | Marius Steenkamp | mdsteen | mdsteen@amazon.nl |
| **GenAI Sales Lead** | Guy Kfir | kfir | kfir@amazon.nl |
| **Marketplace BDM** | Ilkka Ranta | ilkka | ilkka@amazon.com |
| **Previous Account Owner** | Aslihan Kurt | aslikurt | aslikurt@amazon.nl |

## Onboarding Status
- **Transfer Status:** In progress — handover call with Suleman (haffejs) on May 12
- **EOP → Enterprise:** Transitioning from EoP to full Enterprise Support
- **SSP:** Not yet created — will build after handover

## Admin Checklist
- [ ] Handover call with Suleman (May 12) — get artifacts, context, key contacts
- [ ] Introduce myself to customer primary contact
- [ ] Check if Slack channel exists (#es-blocktech or similar)
- [ ] Set up recurring cadence call
- [ ] Create SSP after initial engagement
- [ ] Review any existing support cases

## Initial Observations & SSP Ideas
Based on the spend profile:
1. **EC2 optimization** — Large EC2 spend, potential for right-sizing or Graviton migration
2. **Networking review** — $346K/yr on Direct Connect + Transit Gateway is significant. Architecture review opportunity.
3. **Modernization potential** — No containers/serverless visible. Could explore ECS/EKS migration for some workloads.
4. **Cost optimization** — Check RI/SP coverage for EC2 instances
5. **Self-managed DB assessment** — If running databases on EC2, potential RDS migration opportunity

## Notes
- Customer is in Financial Services / Software & Internet (blockchain/fintech based on name)
- Relatively new AWS customer (account created April 2022)
- Health score at 50.91 — average, room for improvement
- Previous account owner was Aslihan Kurt — may have historical context
