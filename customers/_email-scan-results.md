# Email Folder Scan Results — June 25, 2026
> Scanned all 6 customer Outlook folders. Key findings to add to knowledge base.

---

## ReBound (30 emails scanned, 5 read in detail)

### Key findings to add to knowledge base:

**Strategic Goals (from onboarding email Feb 27, 2026):**
- Fraud Detection & Prevention — live with Nike, in progress
- Customer Service GenAI Automation — exploring AI-driven automation
- Developer Productivity Improvements — using GitHub + CoPilot
- Invoice Automation & FinOps — automating invoicing

**Active Projects:**
- **DevOps Agent Integration for Oncall** (May-Jun 2026) — Automating P1 alert investigation + root cause analysis. Amar + Roman working on this. MTTR reduced 55% after deployment.
- **Amazon Quick Observability Solution** (Jun 2026) — Building chatbot POC with observability. Using DynamoDB → Athena → Quick. Proposed: DynamoDB zero-ETL → S3 Tables → Quick. Key contacts: Abdul Qadir (AWS SA), Gaurav Dewani (ReBound), Wouter ten Heggeler, Ian Pottier, Kars Timmer.
- **Reconomy Migration** (May 2026) — Pre-migration checklist for platform migration. Involves Erik Thresh (Softcat), Steve Lovell, Pawel Zawadzki. GCP to AWS migration component.

**Contacts discovered:**
- Gaurav Dewani (gaurav.dewani@reboundreturns.com) — data/analytics
- Wouter ten Heggeler (wouter.tenheggeler@reboundreturns.com) — infra
- Ian Pottier (ian.pottier@reboundreturns.com) — leadership
- Kars Timmer (Kars.Timmer@reboundreturns.com) — team
- Roman — DevOps/Oncall integration lead
- Evgeny — account baselining contact
- Erik Thresh — Strategic Client Director, Softcat (migration partner)
- Pawel Zawadzki — involved in migration

**Monthly Cadence Call (Jun 4, 2026) topics:**
- AWS account updates
- Cost optimization for CloudWatch log scanning
- DevOps Agent implementation progress
- Cloud Enterprise business case discussion

---

## APS / Allied Publicity (13 emails scanned, 1 read in detail)

### Key findings to add to knowledge base:

**SDLC improvements thread (Jun 2026):**
- Toon van Benthem confirmed interest in AI for developers
- Excited about GitLab support (they use GitLab)
- Asking about timeline for broader features
- Arjen de Vries also on thread (senior stakeholder)
- Claude Code event in Eindhoven June 30 — APS invited

**Contacts discovered:**
- Toon van Benthem — primary tech contact, SDLC interest
- Arjen de Vries — another senior person, responded about Claude Code
- Amer Grgic (SA) — driving technical engagement
- Alessandra Manfredi (AM) — coordinating

**Key insight:** APS uses **GitLab** (not GitHub) — important for SDLC workshop planning.

---

## BlockTech (4 emails scanned, 3 read in detail)

### Key findings to add to knowledge base:

**From handover meeting summary (May 12, 2026):**
- **Industry:** Cryptocurrency trading platform (high-frequency, algorithmic trading)
- **Business model:** Revenue from arbitrage trading across exchanges like Binance. No external customers — internal trading platform.
- **Technical requirements:** Low-latency, robust infra. Metal instances, latest-gen compute for competitive advantage.
- **Outstanding issues:**
  1. PTP hardware clock availability (expected Q2 release) — PFR submitted
  2. Grub console access limitations on current instances
  3. AMD instance availability in Singapore/Frankfurt region
- **Previous TAM:** Suleman Haffejee (Cape Town)
- **Account Manager:** Magfried Janga (introduced Amar on May 12)
- **Cadence:** Biweekly with account team

**PTP Hardware Clock (May 13, 2026):**
- BlockTech needs PTP (Precision Time Protocol) hardware clock for trading precision
- PFR submitted by Suleman/Julia Rhodes
- Critical for their high-frequency trading accuracy

**Key contacts:**
- Suleman Haffejee (previous TAM, haffejs@)
- Magfried Janga (AM, introduced Amar)
- Julia Rhodes (rhjulia@ — involved in PTP PFR)
- Josh Levinson (joshlev@ — also on PTP thread)

---

## Yenlo (30 emails scanned, 6 read in detail)

### Key findings to add to knowledge base:

**From Workload Overview Session (Jun 23, 2026):**
- **130+ AWS accounts** — multi-account strategy (per-customer isolation)
- **Enterprise customers:** Dutch government, healthcare companies, financial services
- **Core product:** Connext Platform (iPaaS — API gateway, identity management, system integration)
- **Infrastructure:** EKS, RDS MySQL, EFS storage, Elastic Cloud (monitoring)
- **Custom CI/CD portal** — simplifies Terraform deployments for support team
- **EKS upgrade cycle:** Quarterly, coordinated with customers
- **AI roadmap:** Exploring Amazon Bedrock for automated reporting + security assessments
- **Data isolation:** Separate AWS accounts per enterprise customer

**From Private Pricing thread (Jun 2026):**
- Pumudu reviewing Savings Plans implementation
- Anthropic purchased via AWS Marketplace (counts toward PPA commitment!)
- Alessandra shared PPA Commitment overview document
- Savings Plans discounts shared across all org accounts by default
- Marketplace promotion shared with procurement

**From earlier Workload Session (Jun 16, 2026):**
- Covered Connext platform multi-tenant architecture
- Discussed cost optimization strategies
- Future: AI features optional for customers who prefer not to use them

**Contacts discovered:**
- Pumudu Ruhunage (pumudu.ruhunage@yenlo.com) — Lead Platform Engineer, primary tech contact
- Geert Timmermans — commercial/leadership contact
- Randima Somathilaka — accepted cadence call
- Alessandra Manfredi (AM) — coordinating PPA, marketplace

**Cadence call:** Monthly. Some contacts accepted, one declined ("Voorlopig" = Dutch for "tentative").

---

## P&V Assurances (3 emails scanned, 2 read in detail)

### Key findings to add to knowledge base:

**From Vedanth's cadence call summary (Jun 3, 2026):**
- Trusted Advisor report attached and shared with customer
- Customer raised a question during cadence call (specific Q not visible)
- Previous TAM (Vedanth) actively engaged until handover
- Cadence call was in May 2026

**Handover context:**
- Vedanth shared P&V folder with Amar on Jun 5
- P&V Handover email sent by Amar Jun 15

**Key contacts:**
- Vedanth Gopal Reddy Hanumapur — previous TAM, did handover

---

## Vopak (2 emails scanned, 2 read in detail)

### Key findings to add to knowledge base:

**From Monthly Cadence Call (May 11, 2026):**
- **Key people at Vopak:** Jeff (architect, needs org-level access), Marcel (raised access concerns)
- **Access issue:** Jeff can't access organizational AWS features for multi-region + foundational cloud work. Root cause: Contractual limitation with inQdo (partner), NOT an AWS limitation.
- **Solution needed:** Contact inQdo to request organizational access for Jeff
- **Enterprise support transition:** Moving from On-Ramp (EOP) to full Enterprise support
- **AWS Summit:** Team planning to attend (May 27 partner summit)
- **System Manager enablement:** Sessions discussed
- **Previous TAM:** Krishna Teja Manyam (did handover)
- **EPA info:** Direct AWS contracts need EPA with ES starting $5K/mo + 10% spend

**Key contacts at Vopak:**
- Jeff — architect (needs access)
- Marcel — raised access concerns, operations
- Krishna Teja Manyam — previous TAM
- Erik — explained EPA/pricing structure

**Critical insight:** The access problem for Jeff is the biggest blocker. Vopak wants to do multi-region and foundational cloud work but can't because inQdo's contract structure limits Jeff's org-level permissions.

---

## Summary: Top Priority Items to Add

| Customer | Priority Finding | Action Needed |
|----------|-----------------|---------------|
| ReBound | 3 active projects (DevOps Agent, Observability, Reconomy Migration) | Add to journey.md |
| ReBound | 8+ contacts discovered | Add to profile.md |
| APS | Uses GitLab (not GitHub!) — important for SDLC workshop | Update intelligence |
| BlockTech | Crypto trading, metal instances, PTP clock PFR pending | Update profile + intelligence |
| Yenlo | 130+ accounts, EKS, AI roadmap with Bedrock | Add to journey.md |
| Yenlo | Anthropic purchased via Marketplace (counts to PPA) | Add to intelligence |
| Vopak | Jeff's access blocked by inQdo contract structure | Critical blocker in intelligence |
| Vopak | Transitioning from EOP to full Enterprise Support | Update profile |
