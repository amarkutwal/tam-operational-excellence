# Kiro IDE and CLI for TAM Productivity
## 3 Real-World Examples Where Kiro Improved My Efficiency

**Author:** Amar Kutwal (akkutwal)
**Date:** May 20, 2026

---

## Example 1: Proactive VPN Redundancy Discovery for ReBound (Cycleon)

### The Situation
ReBound (Cycleon) has 27 AWS accounts across multiple regions. Manually checking emails, notifications, and account health across all accounts would take 30-45 minutes each morning.

### What I Did with Kiro
I built a **Daily Kickoff SOP** that automatically pulls and filters emails by customer domain (cycleon.com), retrieves live spend data from Sentral, and generates a prioritized daily briefing.

### The Outcome
On the very first live run, the SOP surfaced a **recurring VPN redundancy issue** across two accounts (193782974826 and 994149324911) — both accounts were NOT using both VPN tunnels, creating a single point of failure. This notification had been coming for weeks but was buried among dozens of other emails from backup-coverage customers.

**Without Kiro:** This would have been missed in the noise of 13+ customer emails. I would have only noticed it reactively — after an outage.

**With Kiro:** The SOP filtered only cycleon.com emails, flagged the recurring pattern, and added it to my priority list as a resilience risk. I was able to proactively prepare a VPN best practices recommendation for the next cadence call — before any customer impact occurred.

### Impact
- **Time saved:** 30 minutes/day on email triage (automated filtering)
- **Proactive value:** Identified resilience risk before it became an incident
- **Customer trust:** Demonstrated proactive monitoring in cadence call

---

## Example 2: BlockTech B.V. Customer Onboarding in 30 Minutes vs 3 Hours

### The Situation
BlockTech B.V. was transferring from another TAM (Suleman, based in Cape Town) to me as part of the EOP → Enterprise transition. I needed to understand their architecture, key contacts, open issues, spend profile, and strategic goals — all before my first customer call.

### What I Did with Kiro
I ran the **Customer Onboarding SOP** which automatically:
1. Searched Sentral for the account and requested access (auto-approved)
2. Pulled full account details: 9 AWS accounts, $108K/month spend, bare metal HFT infrastructure
3. Retrieved the complete account team (14 members with roles and emails)
4. Generated a spend breakdown by service (EC2 47%, Networking 42%, Support 9%)
5. Created a customer profile, SSP tracker, action items list, and onboarding summary
6. Prepared 8 specific questions for my handover call with Suleman

### The Outcome
When I joined the handover call with Suleman, I already knew:
- BlockTech is an HFT crypto trading firm running bare metal instances
- Their top spend is EC2 ($528K/yr) and Direct Connect ($233K/yr)
- They have 4 open PFRs and an upcoming OKX Tokyo migration in June
- Sander van Schie is the key technical contact

**Without Kiro:** I would have spent 2-3 hours manually clicking through Sentral, CMC, and email to gather this context. I would have gone into the handover call unprepared.

**With Kiro:** The entire onboarding took 30 minutes. I came to the handover call fully prepared, asked informed questions, and Suleman commented that the transition was smooth.

### Impact
- **Time saved:** 2.5 hours per customer onboarding (30 min vs 3 hours)
- **Quality:** Arrived at first customer interaction fully prepared
- **Scalability:** Used the same SOP to onboard Vopak (31 accounts) and Allied Publicity (49 accounts) in the same week

---

## Example 3: Catching Fargate Task Retirement 7 Days Before Customer Impact

### The Situation
AWS sends routine notifications about infrastructure changes (Fargate platform version retirements, service deprecations, etc.) to account contacts. With 4 customers and 100+ AWS accounts, these notifications get buried in email volume.

### What I Did with Kiro
The **Daily Kickoff SOP** with SSP milestone mapping automatically:
1. Pulled all ReBound emails from the past 7 days
2. Identified a Fargate task retirement notification for account 994149324911
3. Flagged it as an action item: "Routine retirement of ECS tasks on Fargate beginning Sat, May 23, 02:00 GMT"
4. Mapped it to the SSP pillar: Operational Excellence → Proactive Communication
5. Added it to my "MUST DO" priority list with 7 days lead time

### The Outcome
I was able to proactively inform the customer about the upcoming Fargate task retirement **7 days before it happened**, giving them time to:
- Verify their tasks would restart cleanly on the new platform version
- Schedule any testing if needed
- Avoid surprise during the weekend maintenance window

**Without Kiro:** This notification would have been one of 36 emails that week. I likely would have seen it after the fact — or the customer would have noticed tasks restarting and raised a case.

**With Kiro:** The SOP surfaced it automatically, prioritized it, and I communicated proactively. The customer sees a TAM who's ahead of issues, not reacting to them.

### Impact
- **Proactive engagement:** Customer informed 7 days before change
- **Trust building:** Demonstrates TAM value — "my TAM catches things before they affect us"
- **Case prevention:** No support case needed because customer was prepared
- **SSP alignment:** Mapped to Operational Excellence pillar — shows strategic value of daily work

---

## Summary: Before vs After Kiro

| Metric | Before Kiro | With Kiro | Improvement |
|--------|-------------|-----------|-------------|
| Morning email triage | 30-45 min (manual, all customers mixed) | 10-15 min (automated, filtered by customer) | 60% time reduction |
| Customer onboarding | 2-3 hours (manual research) | 30 min (automated data pull + profile generation) | 80% time reduction |
| Proactive issue detection | Reactive (noticed after impact) | Proactive (surfaced 7+ days early) | From reactive to proactive |
| Multi-customer prioritization | Gut feel, context switching | Scored and ranked automatically | Data-driven decisions |
| SSP alignment | Manual tracking in spreadsheets | Auto-mapped daily actions to SSP pillars | Strategic visibility |

---

## How Other TAMs Can Adopt This

1. Clone the repository: `git clone git@ssh.gitlab.aws.dev:project-ulduz/tam-operational-excellence.git`
2. Customize the steering file with your customer domains
3. Run the Daily Kickoff SOP each morning
4. Iterate — add your own SOPs for workflows specific to your customers

All SOPs are markdown-based and tool-agnostic — they work in Kiro IDE, Kiro CLI, UNO Agent Spaces, and Amazon Quick Desktop.
