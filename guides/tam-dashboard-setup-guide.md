# TAM Portfolio Dashboard — Setup Guide

## Connect → Clone → Import → Done

**Time:** ~5 minutes**What you get:** A live portfolio dashboard with real customer data, 7 automated workflows, and a daily morning briefing.

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
git clone git@ssh.gitlab.aws.dev:project-ulduz/tam-operational-excellence.git ~/Documents/tam-workspace

```

This downloads the dashboard template, all 7 workflow skills, and the setup automation.

Then add this folder to Quick Desktop:

- **Settings** → **My Computer** → **Add folder** → select `~/Documents/tam-workspace`

---

## Step 3: Import & Setup (2 minutes)

In Amazon Quick Desktop:

1. **Settings** → **Capabilities** → **Skills** → **Import**
2. Select: `~/Documents/tam-workspace/skills/tam-dashboard-setup/`
3. Open a new chat and type:

> "Set up my TAM dashboard. My alias is [your-alias]."

Example:

> "Set up my TAM dashboard. My alias is jsmith7."

**Quick Desktop will automatically:**

- Look up your alias → find your customers
- Create customer profiles from your Case Summary Reports
- Generate your personalized dashboard with real data
- Install all 7 workflow skills (daily kickoff, call prep, weekly review, etc.)
- Create scheduled tasks (morning briefing at 8 AM, activity monitor every 15 min)

---

## Step 4: You're Done ✅

Open your dashboard:

```bash
open ~/Documents/tam-workspace/tam-portfolio-dashboard.html

```

Or just ask Quick:

> "Show me my dashboard"

**You now have:**

- Live portfolio dashboard with your real customers
- Auto-ranked priority actions
- Clickable cadence call prep
- Dark/light mode toggle
- Morning briefings at 8 AM
- Weekly reviews every Friday

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

---

## FAQ

| Question | Answer |
| --- | --- |
| Where is my data? | Local on your machine. Nothing shared. |
| Do I need coding skills? | No. Zero code. |
| How often does it refresh? | Every 15 minutes (automatic) + daily morning briefing |
| Can I customize it? | Yes — ask Quick to modify any section |
| What if I get new customers? | Say "Add [name] to my dashboard" |
| Does it work with my existing tools? | Yes — Outlook, Slack, Command Center, AWS Health |

---

## Need Help?

- **Slack:** Amar Kutwal (akkutwal)
- **Email:** [akkutwal@amazon.nl](mailto:akkutwal@amazon.nl)
- **Repo:** [https://gitlab.aws.dev/project-ulduz/tam-operational-excellence](https://gitlab.aws.dev/project-ulduz/tam-operational-excellence)

