# SOP: Daily Kickoff

## Purpose
Start your day with a clear picture of what needs attention across all your customers. This SOP pulls together emails, tickets, health events, and action items into a single morning briefing.

## When to Run
- **Frequency:** Every morning, first thing
- **Estimated Time:** 2-3 minutes (automated), 10-15 minutes (review + action)

## Prerequisites
- MCP servers configured: Outlook, SIM/Support, Slack (via UNO or manual setup)
- Customer folders set up in `customers/` directory with account IDs

## Steps

### Step 1: Email Triage
Ask Kiro or UNO:
```
Summarize my unread emails from the last 24 hours. 
Group them by customer and flag anything urgent (escalations, executive emails, health events).
```

### Step 2: Open Tickets Review
```
From the Case Summary Report email, filter ONLY for cases belonging to my primary customers:
- cycleon.com = ReBound (Cycleon)
- (Add new customer domains here as they transfer)

EXCLUDE all other customer cases — those are backup coverage only.

For each case belonging to my customers, note:
- Case ID, Account ID, Severity, Status, Age, SLA Expiration, Owner, Resolver, Topic

Then look up each Case ID in the support tools for full details:
- What is the issue about?
- What's the current status/progress?
- Is there anything blocking resolution?
- Does it need TAM follow-up?

Highlight any that are:
- Sev-1 or Sev-2 (critical/urgent)
- Stale (no update in 3+ days)
- Approaching SLA breach
- In PMA status for too long
```

### Step 3: Calendar Check
```
What meetings do I have today? 
For any customer cadence calls, pull the latest case summary and action items.
```

### Step 4: Health Events
```
Check for any active AWS health events affecting my customers' accounts.
```

### Step 5: Action Items Review
```
Review my open action items across all customers. 
What's due today or overdue?
```

### Step 6: Daily Priority List
```
Based on everything above, create my priority list for today:
1. Urgent items (must do today)
2. Important items (should do today)  
3. Follow-ups (can wait but track)
```

## Expected Output
A daily briefing document saved to `customers/_daily-briefings/YYYY-MM-DD.md` containing:
- Email summary by customer
- Ticket status overview
- Today's meetings with prep notes
- Active health events
- Priority action list

## Customization
- Adjust the email lookback window (24h, weekend = 72h)
- Add/remove data sources based on your MCP server setup
- Modify priority criteria based on your customer portfolio size

## Tips
- On Mondays, change the email lookback to "since Friday"
- Before PTO, run this for the next 5 days to prep your backup
- Save the output as a reference for your weekly review
