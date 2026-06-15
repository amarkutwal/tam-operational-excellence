---
name: tam-customer-onboarding
display_name: TAM Customer Onboarding
trigger: "onboard new customer, customer onboarding, set up new customer, new customer transfer"
icon: "🆕"
description: "Automate new customer setup when they join your portfolio (especially EOP → Enterprise transitions). Creates profiles, pulls account data, generates admin checklists, and drafts initial SSP milestones."
---

# TAM Customer Onboarding

## Overview
Automate new customer setup when they join your portfolio — whether EOP → Enterprise transition or handover from another TAM. Creates profiles, pulls account data, generates admin checklists, handover checklist, and drafts initial SSP milestones. Integrates with tam-infrastructure-discovery for the technical assessment. Total time: ~30 minutes vs 2-3 hours manual.

## Workflow

### Step 1: Gather Basic Info
- **Mode**: `agentic`
- **Input**: User context or direct specification
- **Output**: Customer name, account ID, assignment type, previous TAM, partner status
- **Validate**: At minimum customer name and assignment reason identified
- **On failure**: Ask user for missing details

Ask for (or detect from context): customer name, account ID (payer), reason (EOP → Enterprise | TAM handover | New | Other), previous TAM, partner involvement.

### Step 2: Account Data Pull (~3 minutes)
- **Mode**: `agentic`
- **Tool**: Knowledge Graph `kg_search`
- **Input**: Customer name/account ID
- **Output**: Customer profile with industry, spend, contacts, territory, account mappings, team
- **Validate**: Payer account identified, team members listed
- **On failure**: Note missing data, proceed with available info

Search Sentral for account details. Pull AWS account mappings (payer + linked). Get account team (AM, SA, ESM, specialists). Get spend breakdown (top 10 services).

### Step 3: Handover Checklist (if TAM transfer)
- **Mode**: `agentic`
- **Tool**: Outlook `email_search`, Slack `search_messages`
- **Input**: Previous TAM name, customer name
- **Output**: Completed handover checklist
- **Validate**: Key items addressed (cases, SSP, contacts)
- **On failure**: Flag missing items for follow-up with previous TAM

Checklist items:
| Item | Status |
|------|--------|
| Warm introduction email sent | ⬜ |
| Open cases transferred/briefed | ⬜ |
| SSP document shared | ⬜ |
| Customer priorities communicated | ⬜ |
| Partner rules documented | ⬜ |
| Slack channel access | ⬜ |
| Calendar events transferred | ⬜ |
| Key contacts identified | ⬜ |

### Step 4: EOP → Enterprise Specifics (if applicable)
- **Mode**: `agentic`
- **Input**: Account history
- **Output**: Transition context and communication plan
- **Validate**: Previous engagement documented

Check previous EOP engagement history, review Trusted Advisor findings, assess upgrade implications, plan communication of new service level.

### Step 5: Partner-Resold Handling (if applicable)
- **Mode**: `agentic`
- **Input**: Partner information
- **Output**: Documented partner rules
- **Validate**: Cost sharing rules explicitly stated

Document: partner name, pricing/cost rules (e.g., NEVER share cost data), communication rules, billing relationship, partner domains for monitoring.

### Step 6: Admin Setup Checklist
- **Mode**: `agentic`
- **Input**: Customer name
- **Output**: Setup checklist with conventions
- **Validate**: All admin items listed

| Item | Convention | Status |
|------|-----------|--------|
| Slack channel | #tam-[customer-short-name] | ⬜ |
| Email label/folder | [Customer Name] | ⬜ |
| Calendar cadence | [Frequency] [Day] [Time] | ⬜ |
| Case monitoring | Add to Case Summary Report filter | ⬜ |
| Knowledge Graph | Add customer entity + relationships | ⬜ |
| Customer profile doc | Save to workspace | ⬜ |

### Step 7: Historical Context (~2 minutes)
- **Mode**: `agentic`
- **Tool**: Knowledge Graph `kg_search`
- **Input**: Customer name, last 30 days
- **Output**: Cases, escalations, health events, patterns
- **Validate**: Historical data retrieved or confirmed empty
- **On failure**: Note "No historical data — fresh start"

### Step 8: Infrastructure Overview
- **Mode**: `agentic`
- **Input**: Account data from Step 2
- **Output**: High-level infrastructure snapshot
- **Validate**: Top services and regions identified

Run lightweight version of tam-infrastructure-discovery (top services, regions, major workloads). Note: "Run full infrastructure-discovery separately in week 2 for deep dive."

### Step 9: Draft Initial SSP Milestones
- **Mode**: `agentic`
- **Input**: Infrastructure overview + historical context + customer priorities
- **Output**: 3-5 draft milestones
- **Validate**: Milestones are actionable and time-bound

Quick wins (first 30 days) + medium-term (60-90 days). Align with customer's stated priorities if known from handover.

### Step 10: First-Call Talking Points & 30-Day Timeline
- **Mode**: `agentic`
- **Input**: All gathered data
- **Output**: Talking points + 4-week timeline
- **Validate**: Timeline has deliverables per week

30-day timeline:
| Week | Focus | Deliverable |
|------|-------|-------------|
| 1 | Introductions + access | First call, admin setup |
| 2 | Discovery | Infrastructure review, case scan |
| 3 | Planning | Draft SSP, prioritize |
| 4 | Delivery starts | First milestone kicked off |

## Output

```markdown
# 🆕 Customer Onboarding — [Customer Name]
**Date**: [Date] | **Assignment Type**: [EOP/Handover/New]
**Previous TAM**: [Name or N/A]

## 👤 Customer Profile
| Field | Value |
|-------|-------|

## 👥 Account Team
| Role | Name | Contact |
|------|------|---------|

## 💰 Top Services by Spend
| # | Service | Monthly | % of Total |
|---|---------|---------|-----------|

## 🔄 Handover Status
[Checklist]

## 🏗️ Infrastructure Snapshot
[Overview]

## 📋 Admin Checklist
[Setup items]

## 🎯 Draft SSP Milestones
| # | Milestone | Pillar | Priority | Target |
|---|-----------|--------|----------|--------|

## 📅 First 30 Days
[Timeline]

## 💬 First-Call Talking Points
1. [Introduction approach]
2. [What Enterprise support means for them]
3. [Quick wins you can offer]
4. [Ask about their priorities]
```

## Lessons Learned

### Do
- Reach out to previous TAM within 24 hours of assignment
- Document ALL partner rules in customer profile — prevents costly mistakes
- Save onboarding output to knowledge graph for future reference
- Run tam-infrastructure-discovery as follow-up in week 2

### Don't
- Don't skip the handover checklist for TAM transfers — gaps cause dropped balls
- Don't share cost data with partner-resold customers from day one — document the rule early

### Common Failures
- Previous TAM may have already left org — use their last emails/Slack for context
- Account data may be incomplete for new EOP customers — fill gaps during discovery

### When to Ask the User
- If assignment reason is unclear, ask before proceeding
- If partner rules are ambiguous, confirm before documenting