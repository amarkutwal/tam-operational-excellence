# TAM Portfolio Dashboard — Setup Guide

## Connect → Clone → Upload → Run → Done

**Time:** ~15 minutes
**What you get:** A live portfolio dashboard with real customer data, 8 automated workflows, Dante/K2 infrastructure research, and a daily morning briefing.
**Last Updated:** June 25, 2026

---

## Features at a Glance

### 📊 Dashboard Sections
| Section | What it does |
|---------|-------------|
| Data Source Status | Live connection badges (Outlook, Slack, AWS Health, Cases, Cost Explorer) |
| KPI Summary | 4 tiles: Active Customers, Open Cases, SSP Milestones, Strategic Focus % |
| Active Escalations | Red-bordered alert for anything needing immediate attention |
| Customer Health Scorecard | Tiered table with CHI scores, priority ranking, SSP status, spend trends |
| Priority Actions | Ranked action items with dismiss/mark-done persistence |
| Pending Follow-ups & Commitments | Cards tracking what you committed to customers |
| Strategic Engagement Opportunities | Per-customer proactive recommendations with priority levels, signals, and suggested AWS programs (SHIP, WAR, CFM, EBA) |
| Upcoming Meetings | Auto-filtered — past meetings hide automatically, future ones stay visible |
| Communications | Email + Slack messages per customer, mark-done persists across refresh |
| SSP Milestone Progress | Charts showing delivery status per customer |
| Security & Resilience Trends | 6-month trend lines (critical findings, EOL, vulnerabilities) |
| Customer Risk Acceptance | Documented risk decisions with review dates |
| Time Budget | How your time splits across customers, initiatives, and buffer |
| Cadence Call Prep | Expandable panels per customer with prep checklist |
| Weekly Calendar View | At-a-glance week schedule |
| Cost Trend Charts | Per-customer spend over time |

### ⚡ Smart Features (added Jun 2026)
| Feature | How it works |
|---------|-------------|
| **Auto-hide past meetings** | Meetings with a date before today are hidden automatically on page load |
| **Persistent mark-as-done** | Followups, communications, and meetings all save to localStorage — survives refresh |
| **Future meetings stay visible** | Marking a future meeting "done" shows a green "prepped" indicator but keeps the card visible |
| **Live monitoring agent** | Runs every 15 min — checks Outlook folders, inbox, Slack channels, calendar. Writes new action items directly into the dashboard |
| **Strategic signal scanning** | Refresh agent detects cost, health, security, modernization, and EOS/EOL keywords in emails/Slack. When found → updates the customer intelligence file |
| **Dynamic timestamps** | All sync timestamps use JavaScript `dayjs()` — show current time on every browser refresh. No more stale dates |
| **Dante/K2 infrastructure research** | Live API calls into customer AWS accounts. Pulls EC2, VPN, Savings Plans, EKS, Lambda, RDS data. Powers the Strategic Engagement section |
| **Slack action detection** | Agent flags messages directed at you (mentions, questions, first messages after joining a channel) — not just all messages |
| **All sections collapsible** | Click any section header to collapse/expand — state saved to localStorage, survives refresh |
| **Dark/light mode** | Toggle in top-right corner, preference saved to localStorage |
| **Auto-reload** | Dashboard reloads every 15 minutes to pick up fresh data from the monitoring agent |
| **Strategic engagement engine** | Analyzes customer signals (cases, health, spend, emails) and surfaces proactive engagement opportunities matched to AWS programs |
| **Deduplication** | Monitoring agent checks for existing items before adding — no duplicates |
| **Dismiss (×) button** | Every followup/commitment has ✓ (mark done) and × (not relevant) — both persist across refresh |
| **Content-stable IDs** | Followup item IDs based on content hash — dismissals survive dashboard regenerations |
| **Commitment vs Action labels** | Each followup card auto-classified as COMMITMENT (orange) or ACTION (blue) for quick visual differentiation |
| **Empty row prevention** | When all items in a card group are hidden, the parent container auto-hides too — no blank rows |
| **Tooltips below icons** | Info tooltips appear below the icon to prevent overlap with sections above |

### 🤖 Automated Workflows (8 Skills + 2 Agents)
| Skill / Agent | What it does |
|-------|-------------|
| Daily Kickoff | Morning briefing across all customers — emails, cases, health events, schedule |
| Daily Focus Recommender | Scores all customers by urgency, recommends what to focus on today |
| Cadence Call Prep | One-click prep for any customer call — cases, activity, SSP, talking points |
| Weekly Review | End-of-week progress review, SSP tracking, next-week planning |
| Customer Onboarding | Automates new customer setup when they join your portfolio |
| Infrastructure Discovery | Maps what a customer runs on AWS — services, compute, data, security |
| Support Plan Builder | Drafts SSP milestones based on actual customer data and needs |
| **Weekly Strategic Research** | Runs Monday 06:00. Deep customer analysis via Dante + Outlook + Slack. Updates intelligence files and dashboard |
| **tam-dashboard-refresh** (agent) | Every 15 min. Checks all data sources, updates timestamps, scans for strategic signals, writes new items to dashboard |
| **tam-weekly-research** (agent) | Monday 06:00. Pulls live Dante data, analyzes communication patterns, detects opportunities, updates all customer intelligence files |

---

## Step 1: Connect Your Tools (2 minutes)

Open Amazon Quick Desktop:

1. **Settings** → **Capabilities** → **Connections**
2. Connect **Outlook** (click → sign in)
3. Connect **Slack** (click → authorize)

These feed your emails, calendar, and Slack messages into the dashboard.

---

## Step 2: Clone the Repo (1 minute)

Open your terminal and run:

```bash
# Refresh your Midway SSH certificate first (tap YubiKey when prompted)
mwinit -o

# Clone the repo
git clone git@ssh.gitlab.aws.dev:project-ulduz/tam-operational-excellence.git ~/Documents/tam-workspace
```

> ⚠️ **Getting a "Permission denied" error?** Run `mwinit -o` first — GitLab requires a fresh Midway SSH certificate. HTTPS won't work (blocked with 403).

This downloads the dashboard template, all workflow skills, and the setup automation.

Then add this folder to Quick Desktop:

- **Settings** → **My Computer** → **Add folder** → select `~/Documents/tam-workspace`

---

## Step 2.5: Connect Dante/K2 — Infrastructure Research (3 minutes)

This step adds live infrastructure research. You can pull EC2 instances, VPN status, Savings Plans, EKS clusters, Lambda functions, and RDS instances directly from customer AWS accounts.

### Prerequisites

- K2 Workbench access (same as UNO)
- `mwinit` active (same as Step 2)

> 💡 If you get "access denied" when querying a customer account later, check your K2 access justification for that account.

### Install the MCP server

Open your terminal:

```bash
# Add the registry (only needed once)
toolbox registry add s3://buildertoolbox-registry-mule-remote-mcp-adapter-live-us-west-2/tools.json

# Install the server
toolbox install aws-support-troubleshooting-mcp --force --channel head
```

You should see: `Successfully installed aws-support-troubleshooting-mcp version X.X.X`

### Add it to Quick Desktop

1. **Settings** → **Capabilities** → **+ Create** → **MCP Server**
2. Select **Local** tab
3. Fill in:

| Field | Value |
|-------|-------|
| Name | `aws-support-troubleshooting-mcp` |
| Command | `aws-support-troubleshooting-mcp-server` |
| Arguments | *(leave empty)* |
| Description | `Kumo Support Troubleshooting MCP - K2/Dante API calls into customer accounts, case search, customer health` |

4. Click **Save**
5. You should see: **28 tools · Connected** (green dot)

### What this enables

| Capability | Example |
|-----------|---------|
| EC2 instances | See what instances a customer runs, their types, and state |
| VPN status | Check if VPN tunnels are UP or DOWN |
| Savings Plans | See if plans are active or expired (cost optimization signal) |
| EKS clusters | Find Kubernetes workloads |
| Lambda functions | Check serverless footprint and runtime versions |
| RDS/Aurora | Identify database instances and engines |
| Organizations | Discover linked accounts under a payer |

This data powers the **Strategic Engagement Opportunities** section. Instead of guessing what customers need, the dashboard shows recommendations backed by real infrastructure data.

---

## Step 3: Upload Skills (3 minutes)

In Amazon Quick Desktop:

1. **Settings** → **Capabilities** → **Skills** → **Upload folder**
2. Upload the setup skill first: `~/Documents/tam-workspace/skills/tam-dashboard-setup/`
3. Then upload each of the 7 workflow skills (one at a time):
   - `~/Documents/tam-workspace/skills/tam-cadence-call-prep/`
   - `~/Documents/tam-workspace/skills/tam-customer-onboarding/`
   - `~/Documents/tam-workspace/skills/tam-daily-focus-recommender/`
   - `~/Documents/tam-workspace/skills/tam-daily-kickoff/`
   - `~/Documents/tam-workspace/skills/tam-infrastructure-discovery/`
   - `~/Documents/tam-workspace/skills/tam-support-plan-builder/`
   - `~/Documents/tam-workspace/skills/tam-weekly-review/`

> 💡 You should see **8 skills** total under "MY SKILLS" when done (1 setup + 7 workflows).

---

## Step 4: Run the Setup (2 minutes)

Open a new chat and type:

> "Set up my TAM dashboard. My alias is [your-alias]."

Example:

> "Set up my TAM dashboard. My alias is mageshpj."

**Quick Desktop will automatically:**

- Look up your alias → find your customers
- Create customer profile folders from your Case Summary Reports
- Generate your personalized dashboard (full version with all sections)
- Create scheduled tasks (morning briefing at 8 AM, activity monitor every 15 min)

---

## Step 5: You're Done ✅

Open your dashboard in your **browser** (not the Quick viewer — browser gives you full interactivity with mark-done persistence and charts):

```bash
open ~/Documents/tam-workspace/tam-live-dashboard.html
```

Or just ask Quick:

> "Show me my dashboard"

**You now have:**

- Live portfolio dashboard with your real customers (all 20 sections)
- Weekly calendar view with upcoming meetings
- Customer health scorecard with CHI scores
- Auto-ranked priority actions (dismissable)
- Cadence call prep panels (expandable per customer)
- SSP milestone progress tracker
- Communications section (email + Slack per customer)
- Security & resilience risk trends
- Cost trend charts
- Time budget allocation
- Dark/light mode toggle
- Auto-reloads every 15 minutes (picks up fresh data automatically)
- Morning briefings at 8 AM
- Weekly reviews every Friday
- Strategic engagement recommendations (data-backed)

---

## Step 5.5: Customer Intelligence Files

After setup, you will have per-customer intelligence files at:

```
customers/
├── rebound-cycleon/strategic-intelligence.md
├── allied-publicity/strategic-intelligence.md
├── blocktech-bv/strategic-intelligence.md
├── yenlo/strategic-intelligence.md
├── p-and-v/strategic-intelligence.md
└── vopak/strategic-intelligence.md
```

### What they contain

Each file has these sections:

| Section | What it tracks |
|---------|---------------|
| Active Signals | New findings from emails, Slack, Dante — with priority and date |
| Strategic Opportunities | Ranked engagement proposals based on signals (e.g., "Graviton migration — HIGH") |
| SSP Alignment | Checklist linking opportunities to SSP milestones |
| Communication Patterns | Last contact, frequency, channel preferences |
| Research Notes | Dante/K2 infrastructure data, account details, raw findings |

### How they stay fresh

- **Every 15 minutes:** The refresh agent scans emails/Slack for new signals → updates the relevant file
- **Every Monday at 06:00:** The weekly research agent does deep analysis → pulls Dante data → updates all 6 files → refreshes the dashboard

You do not need to update these files manually. They grow smarter over time.

### Finding your customer account IDs

To pull Dante data, the agent needs your customers' AWS account IDs. You can find these in:
- Command Center (CMC)
- AWSentral (customer account page)
- Or ask Quick: "What is the AWS account ID for [customer name]?"

The weekly agent prompt stores your account IDs. Update them when you get new customers.

---

## Daily Usage

| What you want | What you say or do |
| --- | --- |
| See your dashboard | "Show me my dashboard" |
| Morning briefing | Runs at 8 AM automatically, or say "run daily kickoff" |
| Prep for a call | Click customer name in dashboard → prep panel expands |
| Weekly review | "Run my weekly review" |
| Add new customer | "Add [customer name] to my dashboard" |
| Refresh data | "Refresh my dashboard" |
| Daily focus | "What should I focus on today?" |
| Pull Dante data | "Pull infrastructure data for [customer name]" |
| Check VPN status | "Check VPN tunnel status for [customer name]" |
| Check Savings Plans | "Show Savings Plan status for [customer name]" |

---

## Troubleshooting

| Problem | Fix |
| --- | --- |
| `git clone` permission denied | Run `mwinit -o` first, then retry |
| Only see 1 skill after upload | You need to upload each skill folder individually (8 total) |
| Dashboard missing sections (comms, SSP, call prep) | Re-run setup — make sure you're using the latest repo (`git pull`) |
| Dashboard shows 0 emails / empty sections | Connect Outlook first, then "Refresh my dashboard" — data fills in over time |
| Skills don't show in Quick | Make sure you clicked "Upload folder" (not "Upload") and selected the folder, not a file |
| Dante MCP shows 0 tools | Check that `aws-support-troubleshooting-mcp-server` is in your PATH (`~/.toolbox/bin/`). Run `toolbox install aws-support-troubleshooting-mcp --force --channel head` again |
| "Access denied" on Dante API call | You need K2 access justification for that specific customer account. Check K2 Workbench |
| Timestamps stuck at old date | This should not happen anymore (timestamps are dynamic JS). If it does, ask Quick to "fix my dashboard timestamps" |

---

## FAQ

| Question | Answer |
| --- | --- |
| Where is my data? | Local on your machine. Nothing shared. |
| Do I need coding skills? | No. Zero code. |
| How often does it refresh? | Every 15 minutes (automatic) + daily morning briefing + weekly deep research (Monday 06:00) |
| Can I customize it? | Yes — ask Quick to modify any section |
| What if I get new customers? | Say "Add [name] to my dashboard" |
| Does it work with my existing tools? | Yes — Outlook, Slack, Command Center, AWS Health, Dante/K2 |
| What is Dante/K2? | It lets Quick make live API calls into customer AWS accounts to see their infrastructure. Same tool used by UNO TAM Agent |
| Do I need UNO TAM Agent too? | No. This setup gives you the same Dante/K2 access that UNO uses, directly inside Quick Desktop |
| What if the weekly agent misses something? | You can trigger it manually anytime: ask Quick to "run the weekly strategic research" |

---

## Need Help?

- **Slack:** Amar Kutwal (akkutwal)
- **Email:** [akkutwal@amazon.nl](mailto:akkutwal@amazon.nl)
- **Repo:** [https://gitlab.aws.dev/project-ulduz/tam-operational-excellence](https://gitlab.aws.dev/project-ulduz/tam-operational-excellence)
