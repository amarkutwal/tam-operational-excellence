# TAM Dashboard Setup Skill

## Trigger
User says: "Set up my TAM dashboard" or "Set up my TAM dashboard. My alias is [alias]."

## What This Skill Does
Automates the full TAM Portfolio Dashboard setup for any TAM who clones this repo. It:
1. Looks up the TAM's alias → finds their assigned customers
2. Creates customer profile folders from templates
3. Sets up Outlook email folders + rules for each customer
4. Generates a personalized live dashboard using the **full v6 template** (with all sections)
5. Installs all 7 workflow skills (daily kickoff, call prep, weekly review, etc.)
6. Creates scheduled tasks (morning briefing at 8 AM, activity monitor every 15 min)

## Prerequisites
- Amazon Quick Desktop installed
- Outlook connected (Settings → Capabilities → Connections → Outlook)
- Slack connected (Settings → Capabilities → Connections → Slack)
- This repo cloned and added as a folder in Quick (Settings → My Computer → Add folder)

## Setup Steps

### Step 1: Get the TAM's alias
Ask: "What's your alias?" (e.g., jsmith7, akkutwal, mageshpj)

### Step 2: Look up their customers
Use the TAM's alias to find their customer portfolio. Sources:
- Knowledge graph (kg_search for the person)
- Outlook calendar (search for "cadence call" events — customer names are in subjects)
- Outlook email folders (check if customer folders already exist under Inbox)
- Ask the TAM to confirm their customer list

### Step 3: For each customer, create:
1. A folder under `customers/TAM-Customers/[customer-name]/` with:
   - `profile.md` (from `customers/_template/profile.md`)
   - `action-items.md` (from `customers/_template/action-items.md`)
   - `ssp-tracker.md` (from `customers/_template/ssp-tracker.md`)
   - `Onboarding/` folder
2. An Outlook email folder under Inbox → Customers → [Customer Name]
3. An Outlook email folder under Inbox → Customers AWS Notifications → [Customer Name] AWS Notifications

### Step 4: Generate the FULL dashboard (CRITICAL — use template)

**IMPORTANT:** Do NOT generate a simplified dashboard. Use the full v6 template.

**Process:**
1. Read `tam-portfolio-dashboard-template.html` from the repo root
2. Replace ALL placeholder data with the new TAM's actual data:
   - TAM name and alias in the header/subtitle
   - Customer names in all sections (tiles, scorecard, call prep, risk acceptance, communications, etc.)
   - Customer count in KPI tiles
   - Initial cadence call schedule from Outlook calendar
   - Email counts from Outlook folders (if available, else set to 0)
   - Set CHI scores to "N/A" or baseline (pending first data collection)
   - Set SSP milestones to "Not Started" (pending SSP creation)
3. Save as `tam-portfolio-dashboard.html` in the repo root

**The template contains ALL these sections (do NOT omit any):**
1. Data Source Status Legend (top banner with connection indicators)
2. KPI Summary Cards (4 tiles: Active Customers, Open Cases, SSP Milestones, Strategic Focus %)
3. Active Escalations Card (red-bordered alert for urgent items)
4. Customer Health Scorecard (table with priority, CHI, engagement, SSP, health, focus areas, spend)
5. Priority Actions (dismissable ranked list with red/yellow/green dots)
6. Pending Follow-ups & Commitments (purple-bordered cards with due dates)
7. Upcoming Meetings (blue-bordered cards with prep status)
8. Security & Resilience Risk Trends (Highcharts 6-month line chart)
9. Customer Risk Acceptance (mini-table with documented risk decisions)
10. Time Budget (horizontal stacked bar: customer work / initiatives / buffer)
11. Communications — Emails (collapsible section with email counts per customer)
12. Communications — Slack (collapsible section with Slack message counts per customer)
13. Cadence Call Prep (expandable cards per customer with prep checklist and talking points)
14. SSP Milestone Progress (collapsible section with milestone tracker per customer)
15. TAM Goal Tracker (quarterly goals with progress bars)
16. AWS Cost Trend (Highcharts bar chart with monthly spend per customer)
17. Recommendations (AI-generated suggestions based on current portfolio state)
18. Completed Items Archive (toggle to show dismissed/completed actions)
19. Dark/Light Mode Toggle
20. Quick Actions Bar (7 SOP buttons at bottom)

**If any section has no data yet, show it with placeholder/empty state (e.g., "No data yet — will populate after first refresh") — do NOT remove the section.**

### Step 5: Install workflow skills
The 7 workflow skills are in `skills/` folder. Tell the TAM to upload each one:
- `skills/tam-cadence-call-prep/`
- `skills/tam-customer-onboarding/`
- `skills/tam-daily-focus-recommender/`
- `skills/tam-daily-kickoff/`
- `skills/tam-infrastructure-discovery/`
- `skills/tam-support-plan-builder/`
- `skills/tam-weekly-review/`

**Instructions for the TAM:**
> Go to Settings → Capabilities → Skills → Upload folder, and upload each of the 7 skill folders from `~/Documents/tam-workspace/skills/`. You need to upload each one individually.

### Step 6: Create scheduled tasks
- **Morning Briefing** — `time_of_day` at 08:00 Mon-Fri. Pulls overnight emails, notifications, and today's calendar → generates a daily briefing.
- **Dashboard Refresh** — `interval` every 15 minutes. Checks Outlook folders for new emails/notifications, updates the dashboard data.

### Step 7: Confirm success
Show the TAM their new dashboard and explain:
- "Show me my dashboard" → opens it anytime
- Morning briefings run at 8 AM automatically
- Dashboard refreshes every 15 minutes
- "Prep for [customer] call" → generates call prep
- All 20 sections are present — some will populate with real data over the first few days

## Dashboard Template Reference

The template file is `tam-portfolio-dashboard-template.html` in the repo root. It is a copy of the production v6 dashboard with placeholder markers for personalization.

**Placeholder markers to replace:**
- `{{TAM_NAME}}` → TAM's full name
- `{{TAM_ALIAS}}` → TAM's alias
- `{{TAM_REGION}}` → TAM's region (e.g., "Benelux/EMEA North")
- `{{CUSTOMER_COUNT}}` → Number of active customers
- `{{CUSTOMER_N_NAME}}` → Each customer's name
- `{{CUSTOMER_N_TIER}}` → Each customer's tier (Large/Medium/Small)
- `{{REFRESH_TIMESTAMP}}` → Current date/time

## Output
- Personalized `tam-portfolio-dashboard.html` in the repo root (FULL v6 with all 20 sections)
- Customer profile folders populated
- 7 skills uploaded by TAM
- 2 scheduled tasks active
- Live dashboard viewable in Quick Desktop
