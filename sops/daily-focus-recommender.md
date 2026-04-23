# SOP: Daily Focus Recommender

## Purpose
When you're managing 8-12 customers, deciding where to spend your limited time is the hardest part. This SOP analyzes ALL your customers' current status and recommends what to focus on today — proactively, not reactively.

## When to Run
- **Frequency:** Every morning, after the Daily Kickoff SOP (or combined with it)
- **Estimated Time:** 2 minutes (automated), 5 minutes (review and adjust)

## Prerequisites
- Daily Kickoff SOP has run (or run them together)
- Customer profiles populated with account IDs and time allocations
- At least 1 week of daily briefings for trend data

## Steps

### Step 1: Customer Status Snapshot
```
For ALL my customers, create a quick status snapshot:

| Customer | Open Cases | Sev1/2 | Escalations | Health Events | SSP Due Soon | Last Contact | Risk |
|----------|-----------|--------|-------------|---------------|-------------|-------------|------|

Risk levels:
- 🔴 RED: Active escalation, Sev-1/2, or health event
- 🟡 YELLOW: Stale cases (no update 3+ days), SSP milestone overdue, no contact in 2+ weeks
- 🟢 GREEN: Everything on track
```

### Step 2: Priority Scoring
```
Score each customer's urgency today (1-10) based on:
- Active escalations (+5)
- Sev-1 or Sev-2 cases (+4)
- Health events affecting them (+3)
- Cadence call today (+3)
- SSP milestone due this week (+2)
- Stale cases needing follow-up (+2)
- No contact in 2+ weeks (+2)
- Cost anomaly detected (+1)
- Upcoming EOL/EOS deadline (+1)

Rank customers by score, highest first.
```

### Step 3: Time Budget
```
Given my time allocations:
- [Customer A]: X% (~Y hours/week)
- [Customer B]: X% (~Y hours/week)
- ... (list all customers)

And today's calendar (meetings, blocked time):
- Available working hours today: [calculated]
- Already committed (meetings): [calculated]
- Flexible time: [calculated]

How should I distribute my flexible time today?
```

### Step 4: Generate Today's Focus Plan
```
Based on priority scores and time budget, generate my focus plan:

## 🔴 MUST DO TODAY (urgent, time-sensitive)
1. [Action] for [Customer] — [reason] — Est: [X min]
2. ...

## 🟡 SHOULD DO TODAY (important, not yet urgent)
1. [Action] for [Customer] — [reason] — Est: [X min]
2. ...

## 🟢 PROACTIVE (if time allows — high-value, not urgent)
1. [Action] for [Customer] — [reason] — Est: [X min]
2. ...

## 📋 DELEGATE OR DEFER
1. [Action] — [reason to defer] — Suggested date: [date]
```

### Step 5: Map to TAM Goals (Diego's Approach)
```
For each action in today's focus plan, tag which TAM goal it supports:
- Customer Satisfaction (CSAT)
- Case Resolution
- Proactive Engagement
- SSP Delivery
- Cost Optimization
- Operational Excellence
- Security Posture Improvement

This helps me track where my time actually goes vs. where it should go.
```

### Step 6: End-of-Day Check (Optional — run at 4:30 PM)
```
Review today's focus plan:
- What did I complete? ✅
- What got deferred? ➡️
- Any new items that came in today? 🆕
- Carry forward items to tomorrow's plan.
Save to customers/_daily-briefings/YYYY-MM-DD-eod.md
```

## Expected Output
- Morning focus plan with prioritized actions across all customers
- Time allocation recommendations
- Goal mapping for each action
- End-of-day review (optional)

## Why This Matters at Scale
With 3 customers, you can keep it all in your head. With 8-12 customers at 8% time each:
- You have ~3 hours per customer per WEEK
- That's ~36 minutes per customer per DAY
- Every minute of misallocation compounds

This SOP ensures you're spending time where it matters most, every single day.

## Customization
- Adjust priority scoring weights based on your team's priorities
- Add customer-specific SLAs or commitments that affect scoring
- Include initiative work (playbook, presentations, certifications) as a "customer" with its own time allocation
- Modify the TAM goal categories to match your team's OKRs
