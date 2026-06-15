# TAM Dashboard Setup Skill

## Trigger
User says: "Set up my TAM dashboard" or "Set up my TAM dashboard. My alias is [alias]."

## What This Skill Does
Automates the full TAM Portfolio Dashboard setup for any TAM who clones this repo. It:
1. Looks up the TAM's alias → finds their assigned customers
2. Creates customer profile folders from templates
3. Sets up Outlook email folders + rules for each customer
4. Generates a personalized live dashboard with real customer data
5. Installs all 7 workflow skills (daily kickoff, call prep, weekly review, etc.)
6. Creates scheduled tasks (morning briefing at 8 AM, activity monitor every 15 min)

## Prerequisites
- Amazon Quick Desktop installed
- Outlook connected (Settings → Capabilities → Connections → Outlook)
- Slack connected (Settings → Capabilities → Connections → Slack)
- This repo cloned and added as a folder in Quick (Settings → My Computer → Add folder)

## Setup Steps

### Step 1: Get the TAM's alias
Ask: "What's your alias?" (e.g., jsmith7, akkutwal, magjanga)

### Step 2: Look up their customers
Use the TAM's alias to find their customer portfolio. Sources:
- Knowledge graph (kg_search for the person)
- Outlook calendar (search for "cadence call" events — customer names are in subjects)
- Outlook email folders (check if customer folders already exist under Inbox)
- Ask the TAM to confirm their customer list

### Step 3: For each customer, create:
1. A folder under `customers/[customer-name]/` with:
   - `profile.md` (from `customers/_template/profile.md`)
   - `action-items.md` (from `customers/_template/action-items.md`)
   - `ssp-tracker.md` (from `customers/_template/ssp-tracker.md`)
2. An Outlook email folder under Inbox → Customers → [Customer Name]
3. An Outlook email folder under Inbox → Customers AWS Notifications → [Customer Name] AWS Notifications

### Step 4: Generate the dashboard
Using the dashboard template (`tam-portfolio-dashboard.html`), create a personalized version:
- Replace customer names with the TAM's actual customers
- Pull initial data from Outlook folders and calendar
- Generate real priority actions based on their emails/notifications
- Set up Highcharts charts with real notification counts

### Step 5: Install workflow skills
Copy the 7 SOP workflows from `sops/` to the TAM's Quick Desktop as skills:
- `cadence-call-prep.md`
- `customer-onboarding.md`
- `daily-focus-recommender.md`
- `daily-kickoff.md`
- `infrastructure-discovery.md`
- `support-plan-builder.md`
- `weekly-review.md`

### Step 6: Create scheduled tasks
- **Morning Briefing** — `time_of_day` at 08:00 Mon-Fri. Pulls overnight emails, notifications, and today's calendar → generates a daily briefing.
- **Dashboard Refresh** — `interval` every 15 minutes. Checks Outlook folders for new emails/notifications, updates the dashboard data.

### Step 7: Confirm success
Show the TAM their new dashboard and explain:
- "Show me my dashboard" → opens it anytime
- Morning briefings run at 8 AM automatically
- Dashboard refreshes every 15 minutes
- "Prep for [customer] call" → generates call prep

## Output
- Personalized `tam-portfolio-dashboard.html` in the repo root
- Customer profile folders populated
- 7 skills installed
- 2 scheduled tasks active
- Live dashboard viewable in Quick Desktop
