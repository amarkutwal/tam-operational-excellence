# SOP: Cadence Call Prep

## Purpose
Prepare for a customer cadence call in under 5 minutes with a complete briefing: open cases, recent activity, SSP progress, health events, and talking points.

## When to Run
- **Frequency:** Before each customer cadence call (15-30 min before)
- **Estimated Time:** 2 minutes (automated), 5 minutes (review)

## Prerequisites
- Customer account ID and name configured
- MCP servers: Support/SIM, Outlook, Slack, CMC

## Steps

### Step 1: Trigger Prep
```
Prepare for my cadence call with [Customer Name].
Pull:
- All open support cases with severity and status
- Recent emails (last 2 weeks) from/to this customer
- Slack mentions of this customer
- Active health events on their accounts
- SSP milestones due in next 30 days
- Action items from last cadence call
- Cost trends (month-over-month)
```

### Step 2: Review Dashboard
The output will include:
- **Case Summary Table** — severity, status, age, last update
- **Action Items** — from previous cadence, with owner and status
- **Health Events** — any active or recent AWS events
- **Cost Overview** — top services by spend, any anomalies
- **Talking Points** — AI-generated suggestions (verify before using!)

### Step 3: Prep Notes
```
Generate 3-5 talking points for this cadence call based on the data above.
Include any proactive recommendations I should bring up.
```

## Expected Output
Cadence prep document saved to `customers/[customer-name]/cadence-prep-YYYY-MM-DD.md`

## Note
This is very similar to UNO's built-in `@agent-sop:cadence-call-prep` SOP. 
If you have UNO installed, you can use that directly. This version is here 
for customization and for TAMs who want to modify the workflow.
