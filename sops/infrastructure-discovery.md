# SOP: Infrastructure Discovery

## Purpose
Build a comprehensive picture of what a customer is running on AWS. This feeds into SSP planning, proactive recommendations, and helps you speak intelligently about their environment without manually clicking through consoles.

## When to Run
- **Frequency:** Once during onboarding, then quarterly refresh
- **Estimated Time:** 3-5 minutes (automated data pull), 20-30 minutes (analysis and documentation)

## Prerequisites
- Customer account ID(s) configured in their profile
- MCP servers: Support/SIM, CMC, Cost Explorer (if available via UNO)

## Steps

### Step 1: Service Inventory
```
For [Customer Name] (Account IDs: [list]), generate a service inventory:
- List all AWS services actively in use (based on billing data)
- Rank by monthly spend (top 10 services)
- Identify any services with zero spend in last 30 days (potential cleanup)
```

### Step 2: Compute & Container Landscape
```
For [Customer Name], map their compute footprint:
- EC2: Instance types, counts, regions, OS distribution
- EKS/ECS: Cluster count, node groups, container workloads
- Lambda: Function count, invocation volume, top functions by cost
- Fargate: Task counts and configurations
Flag any:
- Instances running outdated AMIs
- Over-provisioned or under-utilized resources
- Single-AZ deployments (resilience risk)
```

### Step 3: Data & Storage Overview
```
For [Customer Name], map their data landscape:
- RDS: Engine types, versions, instance sizes, Multi-AZ status
- DynamoDB: Table count, capacity mode (on-demand vs provisioned)
- S3: Bucket count, total storage, lifecycle policies in place?
- ElastiCache/MemoryDB: Engine, node types
- Redshift: Cluster details
Flag any:
- Database engines approaching EOL/EOS
- Missing backups or point-in-time recovery
- S3 buckets without encryption
```

### Step 4: Networking & Security
```
For [Customer Name], review networking and security posture:
- VPC count and architecture (hub-spoke, transit gateway?)
- Direct Connect or VPN connections
- WAF/Shield status
- GuardDuty, Security Hub, Config rules enabled?
- IAM: Any Trusted Advisor findings on IAM?
```

### Step 5: Cost Analysis
```
For [Customer Name], generate a cost analysis:
- Month-over-month spend trend (last 6 months)
- Top 5 cost drivers by service
- Reserved Instance / Savings Plan coverage and utilization
- Spot usage percentage
- Cost anomalies in the last 30 days
- Estimated savings opportunities
```

### Step 6: EOL/EOS Check
```
For [Customer Name], check for end-of-life / end-of-support items:
- RDS engine versions approaching EOL
- EKS cluster versions nearing end of support
- Lambda runtimes being deprecated
- EC2 instance types being retired
- Any other AWS service deprecations affecting them
Create a timeline of upcoming EOL dates.
```

### Step 7: Resilience Assessment
```
For [Customer Name], assess resilience posture:
- Multi-AZ deployments: what percentage of workloads?
- Multi-Region: any DR setup?
- Backup status: RDS snapshots, S3 versioning, EBS snapshots
- Auto-scaling configured for key workloads?
- Any single points of failure identified?
```

### Step 8: Generate Infrastructure Report
```
Compile all findings into an infrastructure discovery report for [Customer Name].
Save to customers/[customer-name]/infra-discovery-YYYY-MM-DD.md

Include:
- Executive summary (1 paragraph)
- Service inventory table
- Cost overview with trends
- Risk items (EOL, single-AZ, security gaps)
- Top 5 recommendations for SSP milestones
```

## Expected Output
- Infrastructure report: `customers/[customer-name]/infra-discovery-YYYY-MM-DD.md`
- Updated profile.md with key workloads section filled in
- Input for SSP milestone planning

## Relationship to UNO
UNO's `@agent-sop:workload-discovery` does something very similar. If you have UNO + TamTools installed, use that for the automated data pull. This SOP is the manual/Kiro version and also serves as documentation of what to look for.

## Customization
- For small customers (low spend), skip Steps 4 and 7 — focus on cost and core services
- For large customers, break this into multiple sessions
- Add industry-specific checks (e.g., HIPAA compliance for healthcare customers)
