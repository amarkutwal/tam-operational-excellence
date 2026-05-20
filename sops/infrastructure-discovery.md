---
name: tam-infrastructure-discovery
display_name: TAM Infrastructure Discovery
trigger: "infrastructure discovery, what is this customer running, map customer infrastructure, workload discovery"
icon: "🏗️"
description: "Build a comprehensive picture of what a customer is running on AWS. Maps services, compute, data, networking, security, cost, EOL/EOS items, and resilience posture."
---

# TAM Infrastructure Discovery

## Overview
Build a comprehensive map of a customer's AWS infrastructure across all accounts. Covers services, compute, data, networking, security, cost, EOL/EOS, and resilience. Output is structured to feed directly into tam-support-plan-builder for SSP milestone generation. Run during onboarding (week 2), then quarterly refresh.

## Workflow

### Step 1: Identify Scope
- **Mode**: `agentic`
- **Input**: Customer name or account ID from user
- **Output**: Scope definition (single vs multi-account, priority accounts)
- **Validate**: Payer account identified, scope agreed
- **On failure**: Ask user for account details

For multi-account customers (e.g., ReBound=27, Vopak=31, APS=49): start with payer for consolidated view, identify top 5-10 by spend for detail. Full discovery on 49 accounts requires multiple sessions.

### Step 2: Service Inventory (~3 minutes)
- **Mode**: `agentic`
- **Tool**: Knowledge Graph `kg_search`
- **Input**: Customer accounts
- **Output**: Ranked service list (top 15-20) grouped by category
- **Validate**: Services grouped into Compute/Storage/Database/Networking/Security/Analytics/Other
- **On failure**: Use available data, note gaps

### Step 3: Compute Footprint
- **Mode**: `agentic`
- **Input**: Account data
- **Output**: Compute inventory with best practice comparison
- **Validate**: Major compute services covered (EC2, EKS, ECS, Lambda, Fargate)

Capture: instance types/counts/regions, cluster versions, runtimes. Compare to best practices: current-gen instances? Graviton opportunity? Right-sizing?

### Step 4: Data Landscape
- **Mode**: `agentic`
- **Input**: Account data
- **Output**: Data service inventory with version/backup status
- **Validate**: RDS, DynamoDB, S3 covered at minimum

Capture: engines/versions, Multi-AZ, capacity modes, storage classes. Check: version currency, backup enabled, encryption at rest.

### Step 5: Networking
- **Mode**: `agentic`
- **Input**: Account data
- **Output**: Network topology summary
- **Validate**: VPCs, connectivity (DX/VPN), security (WAF/Shield) covered

Check: single points of failure, network segmentation, DDoS protection.

### Step 6: Security Posture
- **Mode**: `agentic`
- **Input**: Account data
- **Output**: Security assessment with findings
- **Validate**: GuardDuty, Security Hub, Config, IAM, CloudTrail covered

Assess: AWS Security Baseline coverage, cross-account standards, incident response readiness.

### Step 7: Cost Analysis
- **Mode**: `agentic`
- **Input**: Customer name + partner status
- **Output**: Cost analysis OR skip notice
- **Validate**: Partner-resold check applied

**⚠️ Skip entirely for partner-resold customers (Vopak).** For direct: MoM trend, top drivers, RI/SP coverage, savings opportunities, expirations in 90 days.

### Step 8: EOL/EOS Assessment
- **Mode**: `agentic`
- **Input**: Version data from Steps 3-4
- **Output**: EOL timeline table with risk and action
- **Validate**: Items have dates and risk levels

Build timeline: RDS versions, EKS versions, Lambda runtimes, instance generations. Flag anything within 12 months.

### Step 9: Resilience Assessment
- **Mode**: `agentic`
- **Input**: Infrastructure data from Steps 3-5
- **Output**: Resilience scorecard
- **Validate**: Multi-AZ, backups, DR, scaling, SPOFs assessed

Assess: Multi-AZ %, multi-region DR, backups, auto-scaling, single points of failure, RTO/RPO documentation.

### Step 10: Compile Report & SSP Recommendations
- **Mode**: `agentic`
- **Input**: All data from Steps 2-9
- **Output**: Complete infrastructure report + top 5-10 SSP recommendations
- **Validate**: Recommendations are specific, prioritized, and actionable

Structure output so tam-support-plan-builder can consume it directly. Generate recommendations based on: EOL items, security gaps, cost savings >$5K/yr, resilience improvements, modernization.

## Output

```markdown
# 🏗️ Infrastructure Discovery — [Customer Name]
**Date**: [Date] | **Accounts Scanned**: X of Y | **Region Focus**: [Regions]

## Executive Summary
[1-2 paragraph overview]

## 📊 Service Inventory (Top 15)
| # | Service | Category | Monthly Spend | % Total | Accounts |
|---|---------|----------|--------------|---------|----------|

## 💻 Compute
[Details]

## 💾 Data
[Details]

## 🌐 Networking
[Details]

## 🔒 Security
[Details]

## 💰 Cost Overview
[OMIT for partner-resold]

## ⏰ EOL/EOS Timeline
| Resource | Current Version | EOL Date | Risk | Action |
|----------|----------------|----------|------|--------|

## 🛡️ Resilience Assessment
[Details]

## 🎯 Top SSP Recommendations
| # | Recommendation | Pillar | Priority | Est. Effort | Potential Impact |
|---|---------------|--------|----------|-------------|-----------------|

## 📎 Data for Support Plan Builder
[Structured summary for tam-support-plan-builder]
```

## Lessons Learned

### Do
- For customers with 20+ accounts: do phased discovery (payer → top accounts → long tail)
- Save output to workspace for tam-support-plan-builder to reference
- Complement with UNO's @agent-sop:workload-discovery for comprehensive view
- Create visualizations after discovery (architecture diagrams, cost pie charts)

### Don't
- Don't try to cover all 49 accounts in one session — phase it
- Don't include cost analysis for partner-resold customers (Vopak)
- Don't present findings as definitive without verifying data freshness

### Common Failures
- API access may be limited for some accounts — note gaps
- Cost data may lag by 24-48 hours — note timestamps
- Some services may not be visible without specific permissions

### When to Ask the User
- If scope is unclear (which accounts to cover), ask before starting
- If significant gaps in data, ask whether to proceed or pause for access