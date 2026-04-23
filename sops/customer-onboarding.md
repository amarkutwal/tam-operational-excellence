# SOP: Customer Onboarding

## Purpose
When a new customer joins your portfolio (especially EOP → Enterprise transitions), this SOP automates the initial setup so you're ready to engage from day one. No more forgetting to create a Slack channel or missing an email alias.

## When to Run
- **Frequency:** Once per new customer
- **Estimated Time:** 5 minutes (automated), 15-20 minutes (review + manual steps)

## Prerequisites
- Customer name, account ID(s), and primary contact info
- MCP servers: Outlook, SIM/Support, Slack, CMC

## Steps

### Step 1: Create Customer Folder
```
Create a new customer folder for [Customer Name].
Copy the template from customers/_template/ and populate:
- profile.md with the customer name, account IDs, support plan, and primary contact
- ssp-tracker.md with empty milestones (we'll fill these in Step 6)
- action-items.md with a clean slate
```

### Step 2: Pull Customer Identity from CMC
```
Look up [Customer Name] or account ID [XXXXXXXXXXXX] in the Customer Management Console.
Pull:
- Payer account and all linked accounts
- Support plan details and entitlements
- Assigned TAM history (am I the first TAM or a replacement?)
- Customer segment and industry
Save this to the customer's profile.md
```

### Step 3: Internal Admin Setup
These may need manual action — the SOP generates the checklist:

```
For [Customer Name], generate my onboarding admin checklist:
1. Slack channel: Does #es-[customer-short-name] exist? If not, note to create it.
2. Email alias: Is there a distribution list for this customer's TAM team?
3. Calendar: Are recurring cadence calls already scheduled?
4. SIM: Are there any existing open tickets I should be aware of?
5. Sentral: Check for any existing PFRs or opportunities linked to this customer.
```

**Manual actions you'll need to do yourself:**
- [ ] Create Slack channel (if needed)
- [ ] Request email alias (if needed)
- [ ] Schedule intro/cadence call with customer
- [ ] Introduce yourself via email

### Step 4: Historical Context Gathering
```
For [Customer Name], pull historical context:
- Last 30 days of support cases (open and recently closed)
- Any escalations in the last 90 days
- Recent health events affecting their accounts
- Any existing SSP or support plan documents
- Previous TAM's notes (if available in knowledge base)
```

### Step 5: Infrastructure Overview
```
For [Customer Name], generate a high-level infrastructure overview:
- Top AWS services by spend (last 3 months)
- Key workloads and architectures (if discoverable)
- Any Well-Architected reviews on file
- Trusted Advisor findings summary
- Service enrollment status (SIP, IEM, etc.)
```

### Step 6: Initial SSP Draft
```
Based on the infrastructure overview and historical context, suggest 3-5 initial SSP milestones for [Customer Name].
Consider:
- Any recurring issues from case history
- Cost optimization opportunities
- Security and compliance gaps
- Operational excellence improvements
- Reliability and resilience recommendations
Save draft milestones to ssp-tracker.md
```

### Step 7: Onboarding Summary
```
Generate a one-page onboarding summary for [Customer Name] that I can reference before my first call.
Include:
- Customer overview (who they are, what they run)
- Current state (open issues, recent activity)
- Suggested talking points for intro call
- Proposed SSP milestones to discuss
```

## Expected Output
- Populated customer folder: `customers/[customer-name]/`
- Onboarding summary: `customers/[customer-name]/onboarding-summary.md`
- Admin checklist with manual action items
- Draft SSP milestones

## Scaling Note
When onboarding multiple customers (e.g., batch EOP transitions), run this SOP for each customer sequentially. The folder structure ensures nothing gets mixed up. With 8-12 customers, having this automated saves hours compared to manual onboarding.

## Customization
- For EOP → Enterprise transitions, add a step to review their previous EOP engagement history
- For brand new AWS customers, skip the historical context step
- Adjust SSP milestone suggestions based on your team's standard templates
