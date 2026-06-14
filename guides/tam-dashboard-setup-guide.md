# TAM Portfolio Dashboard — Setup Guide

> **Time to set up: ~30 minutes** ☕  
> **Difficulty: Beginner** — No coding skills required  
> **Author: Amar Kutwal** (akkutwal@amazon.nl)  
> **Last updated: June 2026**

---

## What You'll Get

By the end of this guide, you'll have:

- ✅ A personal TAM Portfolio Dashboard (HTML) showing all your customers at a glance
- ✅ Automated morning briefings with priorities, cases, and action items
- ✅ Slack and email monitoring that surfaces what matters
- ✅ Reusable workflows (Skills) that save you hours every week

---

## Prerequisites

Before you start, make sure you have:

| Requirement | How to Check |
|---|---|
| **Amazon Quick Desktop** installed | You should see the Quick icon in your menu bar / system tray |
| **Outlook account** connected (or ready to connect) | You'll connect it in Step 1 |
| **Slack account** connected (or ready to connect) | You'll connect it in Step 1 |
| **Access to AWS Command Center** | Verify you can log in at the usual URL |

> 💡 **Don't have Amazon Quick Desktop yet?** Download it from the internal tools page or ask your manager for access. It takes about 5 minutes to install.

---

## Step 1: Connect Your Data Sources

The dashboard pulls information from your Outlook (emails + calendar) and Slack (messages + channels). Let's connect them.

### Connect Outlook

1. Open **Amazon Quick Desktop**
2. Click the **gear icon** (⚙️) in the bottom-left corner → **Settings**
3. Go to **Capabilities** → **Connections**
4. Find **Outlook** and click **Connect**
5. Sign in with your Amazon corporate credentials
6. Grant the requested permissions (read emails, calendar, contacts)
7. You should see a green ✅ next to Outlook when done

### Connect Slack

1. Still in **Settings** → **Capabilities** → **Connections**
2. Find **Slack** and click **Connect**
3. Sign in to your Slack workspace
4. Authorize the connection
5. You should see a green ✅ next to Slack when done

### Why This Matters

| Source | What It Feeds Into |
|---|---|
| Outlook email | Customer communications, action items, escalation alerts |
| Outlook calendar | Upcoming calls, cadence meetings, reviews |
| Slack | Team updates, case discussions, customer channel activity |

> ⚠️ **Note:** Your data stays local on your machine. Nothing is uploaded to shared servers. Amazon Quick reads it locally to generate your dashboard and briefings.

---

## Step 2: Add Your Local Files

Amazon Quick can read files on your computer to build context about your customers. Let's set up a clean workspace.

### Create Your Workspace Folder

Open Terminal (Mac) or Command Prompt (Windows) and run:

**Mac/Linux:**
```bash
mkdir -p ~/Documents/tam-workspace/customers
mkdir -p ~/Documents/tam-workspace/sops
mkdir -p ~/Documents/tam-workspace/presentations
```

**Windows (PowerShell):**
```powershell
New-Item -ItemType Directory -Force -Path "$HOME\Documents\tam-workspace\customers"
New-Item -ItemType Directory -Force -Path "$HOME\Documents\tam-workspace\sops"
New-Item -ItemType Directory -Force -Path "$HOME\Documents\tam-workspace\presentations"
```

> 💡 **Not comfortable with Terminal?** Just open Finder/Explorer, go to Documents, and create these folders manually. The commands above just save time.

### Tell Amazon Quick About Your Folder

1. Open **Amazon Quick Desktop**
2. Go to **Settings** → **My Computer**
3. Click **Add Folder**
4. Navigate to `~/Documents/tam-workspace/` and select it
5. Quick will now be able to read and index files in this folder

### What Goes Where

| Folder | Contents |
|---|---|
| `customers/` | One profile file per customer (see Step 3) |
| `sops/` | Your standard operating procedures, runbooks, templates |
| `presentations/` | QBR decks, SSP slides, training materials |

---

## Step 3: Set Up Customer Profiles

For each customer in your portfolio, create a simple profile file. This helps Amazon Quick understand your customers and personalize your dashboard.

### How to Create a Profile

1. Open any text editor (TextEdit, Notepad, VS Code — whatever you like)
2. Copy the template below
3. Fill in your customer's details
4. Save as `customers/customer-name.md` (e.g., `customers/acme-corp.md`)

### Customer Profile Template

Copy and paste this for each customer:

```markdown
# Customer Profile: [Customer Name]

## Basic Information
- **Account Name:** [Full legal name]
- **Account ID(s):** [123456789012, 234567890123]
- **Tier:** [Large / Medium / Small]
- **Monthly Recurring Charge (MRC):** $[amount]
- **Support Plan:** Enterprise
- **TAM Assignment Date:** [YYYY-MM-DD]

## Primary Contacts
| Name | Role | Email | Phone |
|---|---|---|---|
| [Name] | [CTO/VP Eng/etc.] | [email] | [phone] |
| [Name] | [Cloud Architect] | [email] | [phone] |
| [Name] | [Operations Lead] | [email] | [phone] |

## Key Workloads
- [e.g., E-commerce platform on EKS]
- [e.g., Data lake on S3 + Athena + Glue]
- [e.g., ML inference on SageMaker]

## Current SSP Milestones
| # | Milestone | Status | Target Date |
|---|---|---|---|
| 1 | [e.g., Well-Architected Review] | [Not Started / In Progress / Complete] | [YYYY-MM-DD] |
| 2 | [e.g., Disaster Recovery Runbook] | [Status] | [Date] |
| 3 | [e.g., Cost Optimization Review] | [Status] | [Date] |

## Active Cases
- Case [ID]: [Brief description] — [Status]
- Case [ID]: [Brief description] — [Status]

## Cadence
- **Call Frequency:** [Weekly / Biweekly / Monthly]
- **Next Call:** [Date]
- **Preferred Day/Time:** [e.g., Tuesdays 10:00 AM CET]

## Notes
[Any context: recent escalations, upcoming events, relationship notes, etc.]
```

### Tips

- You don't need to fill in every field right away — start with the basics and add more over time
- Keep the file updated after each customer interaction
- Amazon Quick will use this info to generate relevant briefings and dashboard data

---

## Step 4: Clone or Build the Dashboard

You have two options to get your dashboard up and running:

### Option A: Clone Amar's Dashboard (Recommended for Quick Start)

This gets you a working dashboard in under 5 minutes.

```bash
# Navigate to your workspace
cd ~/Documents/tam-workspace/

# Clone the repository
git clone https://github.com/akkutwal/tam-portfolio-dashboard.git dashboard
```

Then customize it:

1. Open `dashboard/index.html` in a text editor
2. Find the section marked `<!-- CUSTOMIZE: Your Customers -->` near the top
3. Replace the example customer names, account IDs, and case numbers with yours
4. Save the file
5. Open `index.html` in your browser — that's your dashboard!

> 💡 **Don't have git?** You can also download the ZIP file from the GitHub page and unzip it into your workspace folder.

### Option B: Ask Amazon Quick to Generate One

If you'd prefer a fresh dashboard tailored to your portfolio:

1. Open **Amazon Quick Desktop**
2. Start a new conversation
3. Type:

```
Create a TAM Portfolio Dashboard for my customers. 
I have [X] customers. Here are their names: [list them].
Include sections for: active cases, SSP progress, upcoming calls, 
health events, and a priority ranking.
Save it as an HTML file in my tam-workspace folder.
```

4. Quick will generate a custom dashboard HTML file for you
5. Open it in your browser to verify

### What to Customize

Regardless of which option you choose, you'll want to update:

- **Customer names and account IDs** — match your actual portfolio
- **Case IDs** — your current open cases
- **SSP milestones** — your actual support plan milestones and dates
- **Color coding** — adjust thresholds for what counts as "at risk" vs. "healthy"

---

## Step 5: Create Custom Skills (Optional but Recommended)

### What Are Skills?

Skills are **reusable workflows** written in plain English that tell Amazon Quick what to do. Think of them as saved instructions — instead of typing the same request every day, you save it once and run it with one click.

**Example:** Instead of typing "Check my email for customer escalations, look at my calendar for today, and summarize what I should focus on" every morning, you create a "Daily Kickoff" skill that does this automatically.

### How to Create a Skill

1. Open **Amazon Quick Desktop**
2. Go to **Settings** → **Capabilities** → **Skills**
3. Click **Create with AI**
4. Describe what you want the skill to do (see template below)
5. Give it a name (e.g., "Daily Kickoff")
6. Save it

### Your First Skill: Daily Kickoff

Here's a template for a morning briefing skill. Copy this into the skill creation dialog:

```
SKILL: Daily Kickoff — Morning Briefing

PURPOSE: Generate my morning briefing so I know what to focus on today.

STEPS:
1. Check my Outlook inbox for any emails from my customers received 
   since yesterday evening. Flag anything urgent.

2. Look at my calendar for today. List all meetings with prep notes 
   for each (who's the customer, what's the agenda, any open items).

3. Check Slack channels for my customer accounts. Summarize any 
   important messages or escalations from the last 12 hours.

4. Review my customer profiles and list any SSP milestones due 
   this week.

5. Generate a prioritized task list for today, ranked by urgency:
   - P1: Escalations and critical cases
   - P2: Customer calls happening today
   - P3: Follow-ups and proactive items
   - P4: Administrative tasks

OUTPUT FORMAT: 
A clean summary with sections for each area above. 
Include direct links to emails/messages where possible.
End with "Top 3 things to do first" as a quick-glance section.
```

### Other Skills You Might Want

| Skill Name | What It Does |
|---|---|
| **Cadence Call Prep** | Pulls case updates, recent emails, and SSP status for a specific customer before your call |
| **Weekly Review** | Summarizes the week: cases closed, milestones hit, time spent per customer |
| **Case Summarizer** | Takes a case ID and gives you a plain-English summary of the timeline |
| **Customer Health Check** | Analyzes a customer's recent activity and flags concerns |

---

## Step 6: Set Up Scheduled Tasks

Scheduled tasks run automatically in the background so you don't have to remember to trigger them.

### How to Create a Scheduled Task

1. Open **Amazon Quick Desktop**
2. Go to **Settings** → **Capabilities** → **Scheduled Tasks**
3. Click **Create**
4. Configure:
   - **Name:** Give it a descriptive name
   - **Schedule:** Set frequency (every X minutes, daily at time, etc.)
   - **Action:** What should it do (run a skill, check something, etc.)
5. Click **Save & Enable**

### Recommended Scheduled Tasks

#### 1. Activity Monitor (Every 15 Minutes)

```
Name: Activity Monitor
Schedule: Every 15 minutes
Action: Check my Slack and email for any new messages from 
        my customer accounts. If anything is urgent or mentions 
        an escalation, add it to my activity feed with a 🚨 flag.
```

> This ensures you never miss an urgent customer message, even when you're deep in focus work.

#### 2. Daily Kickoff (Every Morning at 8:00 AM)

```
Name: Daily Kickoff
Schedule: Daily at 08:00
Action: Run my "Daily Kickoff" skill and post the results 
        to my activity feed.
```

> When you open Quick in the morning, your briefing is already waiting for you.

#### 3. End of Day Summary (Optional — Every Day at 17:00)

```
Name: End of Day Wrap-up
Schedule: Daily at 17:00
Action: Summarize what I accomplished today based on my sent emails, 
        completed tasks, and calendar meetings. Note any items that 
        need follow-up tomorrow.
```

---

## Step 7: First Use — Your Morning Workflow

You're all set! Here's what your typical morning now looks like:

### 🌅 Morning Routine (5 minutes instead of 30)

1. **Open your dashboard**
   - Open your browser
   - Navigate to your `dashboard/index.html` file (bookmark it!)
   - Glance at the overview: customer health, open cases, priorities

2. **Check your briefing**
   - Open **Amazon Quick Desktop**
   - Your Daily Kickoff results should already be in your **Activity Feed** (the bell icon 🔔)
   - Or type: `"Run Daily Kickoff"` to generate a fresh one

3. **Prep for calls**
   - If you have a customer call today, type: `"Prep me for my call with [Customer Name]"`
   - Quick will pull recent case updates, emails, SSP status, and talking points

4. **Work through priorities**
   - Follow your P1 → P2 → P3 → P4 list
   - As you complete items, you can tell Quick: `"Mark [item] as done"`

### 🔄 Throughout the Day

- Check your Activity Feed periodically for flagged items
- Before any customer call, ask Quick to prep you
- After calls, tell Quick what happened so it updates your notes

---

## Frequently Asked Questions

### "Where is my data stored?"

**Locally on your machine.** Amazon Quick Desktop processes everything on your computer. Your customer profiles, emails, and Slack messages are not uploaded anywhere. The dashboard is a local HTML file.

### "Can I customize the dashboard?"

**Yes!** It's just an HTML file. You can:
- Edit it in any text editor to change layout or colors
- Ask Amazon Quick to modify it for you: `"Add a section for [X] to my dashboard"`
- Add new widgets, remove ones you don't need, change the styling

### "How often does the data refresh?"

**It depends on your scheduled tasks.** If you set the Activity Monitor to run every 15 minutes, you'll get updates every 15 minutes. The dashboard itself shows data from whenever you last refreshed it (or when your scheduled task last updated it).

### "Do I need coding skills?"

**No.** Skills are written in plain English instructions. The dashboard can be customized by asking Quick to do it for you. If you want to make manual HTML edits, basic text editing is all you need — but it's not required.

### "Can I share my dashboard with my team?"

**Yes, but each TAM should customize their own.** You can share the template (the HTML file) and this guide. Each person then fills in their own customer data.

### "What if I get a new customer?"

1. Create a new profile file in `customers/`
2. Update your dashboard (or ask Quick to add them)
3. That's it — your scheduled tasks will automatically start monitoring for that customer

### "Can I use this on multiple devices?"

The dashboard and profiles live on your local machine. If you want them on multiple devices, you can sync the `tam-workspace` folder using your preferred method (Git, OneDrive, etc.).

---

## Getting Help

### Questions or Issues?

| Channel | Details |
|---|---|
| **Contact** | Amar Kutwal — akkutwal@amazon.nl |
| **Slack** | #tam-operational-excellence |
| **GitHub** | [github.com/akkutwal/tam-portfolio-dashboard](https://github.com/akkutwal/tam-portfolio-dashboard) |
| **GitLab** | [gitlab.aws.dev/akkutwal/tam-operational-excellence](https://gitlab.aws.dev/akkutwal/tam-operational-excellence) |

### Common Issues

| Problem | Solution |
|---|---|
| Outlook won't connect | Make sure you're using your corporate credentials. Try disconnecting and reconnecting. |
| Slack shows no channels | Check that you've joined the relevant customer channels in Slack first. |
| Dashboard shows old data | Run your scheduled task manually, or ask Quick to refresh. |
| Skill doesn't work as expected | Edit the skill instructions to be more specific. Plain English works best when it's detailed. |

---

## Quick Reference Card

Save this somewhere handy:

```
📋 DAILY COMMANDS (type these in Amazon Quick):
─────────────────────────────────────────────
"Run Daily Kickoff"          → Morning briefing
"Prep me for [Customer]"     → Call preparation  
"Show my dashboard"          → Portfolio overview
"What's urgent today?"       → Priority check
"Summarize case [ID]"        → Case deep-dive

⚙️ KEY LOCATIONS:
─────────────────────────────────────────────
Settings:        Gear icon → Settings
Connections:     Settings → Capabilities → Connections
Skills:          Settings → Capabilities → Skills
Scheduled Tasks: Settings → Capabilities → Scheduled Tasks
Local Files:     Settings → My Computer
Activity Feed:   Bell icon (🔔) in top bar

📁 YOUR WORKSPACE:
─────────────────────────────────────────────
~/Documents/tam-workspace/
├── customers/        ← Customer profiles
├── sops/             ← Runbooks & procedures
├── presentations/    ← QBR decks & slides
└── dashboard/        ← Your HTML dashboard
```

---

## You're All Set! 🎉

You now have a fully operational TAM Portfolio Dashboard. Here's what you've accomplished:

- [x] Connected Outlook and Slack as data sources
- [x] Set up a clean workspace with customer profiles
- [x] Got a dashboard showing your portfolio at a glance
- [x] Created Skills for repeatable workflows
- [x] Scheduled automated tasks that run in the background
- [x] Learned your new morning workflow

**The biggest time savings come from consistency** — use the Daily Kickoff every morning, keep your customer profiles updated, and let the scheduled tasks handle the monitoring.

Welcome to operational excellence! 🚀

---

*Guide version 1.0 — Created by Amar Kutwal, June 2026*
