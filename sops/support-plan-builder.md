# SOP: Support Plan Builder

## Purpose
Automate the creation and maintenance of Strategic Support Plans (SSPs) by analyzing customer data and suggesting milestones aligned with their actual needs. Instead of building SSPs from scratch, let the AI draft it and you refine it.

## When to Run
- **Frequency:** Once per SSP cycle (typically quarterly), with monthly check-ins
- **Estimated Time:** 5 minutes (automated draft), 30-45 minutes (review and refinement)

## Prerequisites
- Customer onboarding SOP completed (profile populated)
- Infrastructure discovery SOP completed (or UNO workload discovery run)
- Historical case data available

## Steps

### Step 1: Gather Inputs
```
For [Customer Name], gather all inputs needed for SSP planning:
1. Infrastructure discovery report (latest)
2. Case history summary (last 6 months) — patterns, recurring issues, severity distribution
3. Previous SSP milestones and their completion status
4. Customer's stated business priorities (from cadence calls, emails)
5. Any upcoming events: migrations, launches, peak seasons
6. Cost trends and optimization opportunities
7. EOL/EOS timeline items
```

### Step 2: Identify Priority Areas
```
Based on the gathered inputs, categorize findings into AWS Well-Architected pillars:

1. **Operational Excellence** — Monitoring gaps, automation opportunities, runbook needs
2. **Security** — IAM findings, encryption gaps, compliance requirements
3. **Reliability** — Single-AZ risks, backup gaps, DR readiness
4. **Performance Efficiency** — Right-sizing opportunities, scaling configuration
5. **Cost Optimization** — RI/SP coverage, unused resources, architecture optimization
6. **Sustainability** — Resource efficiency improvements

For each pillar, list specific findings with severity (High/Medium/Low).
```

### Step 3: Generate Milestone Suggestions
```
Based on the priority areas, suggest 5-8 SSP milestones for [Customer Name].
For each milestone include:
- Title (clear, actionable)
- Description (what we'll do)
- Pillar alignment (which Well-Architected pillar)
- Priority (High/Medium/Low based on business impact)
- Estimated effort (TAM hours)
- Target completion date
- Success criteria (how we know it's done)
- Dependencies (what needs to happen first)
```

### Step 4: Time Allocation Check
```
Given I have [X]% time allocation for [Customer Name] (approximately [Y] hours/week):
- Can all suggested milestones fit within the SSP period?
- Which milestones should be prioritized if time is limited?
- Are there any milestones that could be self-service (customer does it with guidance)?
- Suggest a realistic timeline that accounts for cadence calls, case work, and other overhead.
```

### Step 5: Draft the SSP Document
```
Generate a draft SSP for [Customer Name] with:
- Customer overview section
- Current state assessment (1 paragraph)
- Milestone table with all details from Step 3
- Quarterly timeline view
- Risk and dependencies section
- Success metrics

Save to customers/[customer-name]/ssp-draft-YYYY-QX.md
```

### Step 6: Update Tracker
```
Update customers/[customer-name]/ssp-tracker.md with the approved milestones.
Set all statuses to "Not Started" with target dates.
```

## Expected Output
- SSP draft document: `customers/[customer-name]/ssp-draft-YYYY-QX.md`
- Updated SSP tracker: `customers/[customer-name]/ssp-tracker.md`
- Time allocation analysis

## Monthly SSP Check-In
Run this lighter version monthly:
```
For [Customer Name], do a monthly SSP check-in:
- Which milestones are on track, behind, or completed?
- Any new priorities that should be added?
- Any milestones that should be deprioritized?
- Update the ssp-tracker.md with current status.
```

## Scaling for Multiple Customers
When managing 8-12 customers:
- Run the full SSP builder during onboarding and at each renewal
- Use the monthly check-in version for ongoing tracking
- The weekly review SOP already includes SSP progress checks
- Prioritize SSP work for customers with the highest risk or most activity

## Customization
- Adjust milestone count based on customer size (3-5 for small, 5-8 for large)
- Add customer-specific compliance requirements (HIPAA, PCI, SOC2)
- Include business review preparation if your customer has QBRs
