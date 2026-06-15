---
name: tam-support-plan-builder
display_name: TAM Support Plan Builder
trigger: "build SSP, create support plan, generate SSP milestones, support plan builder"
icon: "📝"
description: "Automate SSP creation by analyzing customer data and suggesting milestones aligned with their actual needs. Drafts the SSP and checks time allocation feasibility."
---

# TAM Support Plan Builder

## Overview
Automate SSP (Strategic Support Plan) creation by analyzing customer data and generating milestones aligned with actual needs. Uses infrastructure-discovery output when available. Checks time allocation feasibility and produces a draft ready for SharePoint Blueprint format. This skill consumes output from tam-infrastructure-discovery — run that first for best results.

## Time Allocation Formula
```
Weekly hours per customer = (Total work hours × Allocation %)
Example: 40 hrs × 8% = 3.2 hrs/week = ~12.8 hrs/month

Monthly TAM hours available for SSP work:
= Monthly hours - (cadence calls + case management + admin)
= 12.8 - (1 + 3 + 1) = ~7.8 hrs/month for proactive SSP delivery

Quarterly SSP capacity = 7.8 × 3 = ~23.4 hours per customer per quarter
```

Adjust by complexity:
- Simple (3-9 accounts): 100% capacity
- Medium (10-30 accounts): 80% (coordination overhead)
- Complex (30+ accounts): 60% (significant discovery/coordination)

## Milestone Risk Scoring
| Factor | Score |
|--------|-------|
| EOL within 6 months | +3 |
| EOL within 12 months | +2 |
| Security gap (critical) | +3 |
| Security gap (medium) | +1 |
| Cost savings >$10K/yr | +2 |
| Cost savings >$5K/yr | +1 |
| Single point of failure | +2 |
| Customer requested | +2 |
| Compliance requirement | +3 |
| Resilience gap | +1 |

**Priority**: 6+ = High, 3-5 = Medium, 1-2 = Low

## Workflow

### Step 1: Identify Customer & Gather Inputs
- **Mode**: `agentic`
- **Input**: Customer name from user
- **Output**: Customer context + infrastructure discovery data
- **Validate**: Sufficient data to generate milestones
- **On failure**: Suggest running tam-infrastructure-discovery first

Check for existing infrastructure-discovery output. Gather: case history (6 months), previous SSP, customer priorities, upcoming events, cost trends, EOL timeline.

### Step 2: Categorize by Well-Architected Pillars
- **Mode**: `agentic`
- **Input**: All gathered data
- **Output**: Findings categorized by pillar with severity
- **Validate**: Each finding has evidence source and severity

| Pillar | What to Look For |
|--------|-----------------|
| Operational Excellence | Monitoring gaps, IaC adoption, runbook coverage |
| Security | GuardDuty findings, IAM issues, encryption gaps |
| Reliability | Single points of failure, backup gaps, DR readiness |
| Performance Efficiency | Right-sizing, Graviton, caching, scaling |
| Cost Optimization | Unused resources, SP/RI coverage, storage tiering |
| Sustainability | Graviton migration, efficient architectures |

### Step 3: Generate Milestones
- **Mode**: `agentic`
- **Input**: Categorized findings + risk scoring table
- **Output**: 3-10 milestones (count based on customer size)
- **Validate**: Each milestone has title, pillar, risk score, effort, target, success criteria

**Milestone Template**:
```
Title: [Verb] + [What] + [Benefit]
Example: "Upgrade RDS PostgreSQL 11 to 15 to maintain security patches"

Description: [2-3 sentences]
Pillar: [Well-Architected pillar]
Priority: [High/Medium/Low from risk score]
Risk Score: [Calculate per table]
Estimated TAM Effort: [Hours]
Target Date: [Quarter/month]
Success Criteria: [How we know it's done]
Dependencies: [What needs to happen first]
Customer Effort: [What customer does]
```

Count guidance: Small (<$50K/mo) = 3-5, Medium ($50-100K) = 5-7, Large (>$100K) = 7-10.

### Step 4: Time Allocation Feasibility Check
- **Mode**: `agentic`
- **Input**: Milestones + time allocation formula
- **Output**: Feasibility assessment with ratio
- **Validate**: Math is correct, ratio calculated

| Ratio | Assessment | Action |
|-------|-----------|--------|
| >1.2 | ✅ Comfortable | Proceed |
| 0.8-1.2 | 🟡 Tight | Prioritize, may defer Low items |
| <0.8 | 🔴 Overcommitted | Must reduce scope or extend |

### Step 5: Build Quarterly Timeline
- **Mode**: `agentic`
- **Input**: Prioritized milestones + feasibility
- **Output**: Month-by-month distribution
- **Validate**: No single month overloaded, High priority items early

Q1: Quick wins + highest risk. Q2: Medium-term. Q3: Optimization + stretch goals.

### Step 6: Risk & Dependencies
- **Mode**: `agentic`
- **Input**: Milestone details
- **Output**: Risk table + dependency map
- **Validate**: Cross-milestone dependencies identified

List: cross-milestone dependencies, external dependencies (approvals, maintenance windows), risks (resource availability, customer bandwidth).

### Step 7: Draft Document
- **Mode**: `agentic`
- **Input**: All outputs from Steps 2-6
- **Output**: Complete SSP draft in Blueprint-compatible format
- **Validate**: All sections populated, formatting consistent

## Output

```markdown
# 📝 Support Plan (SSP) — [Customer Name]
**TAM**: Amar Kutwal | **Period**: [Start] — [End] | **Allocation**: X%
**Version**: Draft v1 | **Status**: Pending customer review

## Executive Summary
[2-3 paragraphs]

## 📊 Priority Areas by Pillar
| Pillar | Findings | Severity | Milestones |
|--------|----------|----------|-----------|

## 🎯 Milestones
### High Priority
| # | Title | Pillar | Risk Score | TAM Effort | Target | Success Criteria |
|---|-------|--------|-----------|-----------|--------|-----------------|

### Medium Priority
[Table]

### Low Priority (if capacity allows)
[Table]

## ⏰ Time Allocation Check
- Total TAM effort: X hours
- Quarterly capacity: X hours
- Feasibility: ✅/🟡/🔴

## 📅 Quarterly Timeline
| Month | Milestones | Total Hours | Focus |
|-------|-----------|-------------|-------|

## ⚠️ Risks & Dependencies
| Risk | Impact | Mitigation |
|------|--------|-----------|

## 📋 Quarterly Review Schedule
| Review | Date | Focus |
|--------|------|-------|

## 📎 Source Data
- Infrastructure Discovery: [Date]
- Case History: [Period]
- Previous SSP: [Reference]
```

## Lessons Learned

### Do
- Run tam-infrastructure-discovery first for best results
- Get customer input on priorities before finalizing — SSP reflects THEIR goals
- Use Blueprint format for final version on SharePoint
- For monthly check-ins: just update status (✅/🟡/🔴), don't rebuild full SSP

### Don't
- Don't overcommit — if feasibility is Red, reduce scope rather than set unrealistic targets
- Don't ignore customer bandwidth — TAM effort ≠ total effort
- Don't create milestones without success criteria — vague milestones are undeliverable

### Common Failures
- No infrastructure-discovery data available — proceed with limited data but note gaps
- Time allocation math fails if customer allocation % is unknown — ask user

### When to Ask the User
- If feasibility ratio is Red, ask which milestones to defer
- If customer priorities conflict with findings, ask user to resolve
- Always confirm milestone priorities with the customer before finalizing