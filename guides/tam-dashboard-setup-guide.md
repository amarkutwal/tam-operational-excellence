# TAM Portfolio Dashboard — Quick Setup Guide
## From Zero to Dashboard in 3 Steps (~10 minutes)

**Author:** Amar Kutwal (akkutwal)  
**Last Updated:** June 14, 2026  
**For:** TAMs who want to set up their own portfolio dashboard

---

## What You Get

A single-page dashboard that shows:
- All your customers at a glance
- Open cases ranked by priority
- Upcoming cadence calls with prep
- Communications needing your response
- SSP milestone tracking
- Dark/light mode toggle

No coding needed. No approvals needed. Everything runs locally on your machine.

---

## Step 1: Connect Your Tools (2 minutes)

Open Amazon Quick Desktop, then:

1. Click **Settings** (bottom of sidebar)
2. Click **Capabilities**
3. Click **Connections**
4. Connect **Outlook** → click "Connect" → sign in
5. Connect **Slack** → click "Connect" → authorize

That's it. These feed your email, calendar, and Slack data into the dashboard.

---

## Step 2: Tell Quick Your Alias (1 minute)

Open a new chat and type:

> "Set up my TAM dashboard. My alias is [your-alias]."

Example:
> "Set up my TAM dashboard. My alias is xyzpqr."

**What happens automatically:**
- Quick looks up who you are
- Finds your customers from your Case Summary Reports
- Creates customer profiles (name, accounts, tier, MRC)
- Generates your personalized dashboard HTML file
- Installs pre-built Skills (daily kickoff, cadence call prep, weekly review)
- Creates scheduled tasks (morning briefing, activity monitor)

---

## Step 3: Open Your Dashboard (30 seconds)

Once setup is done, open your dashboard:

```bash
open ~/Documents/tam-workspace/tam-portfolio-dashboard.html
```

Or just ask Quick:
> "Show me my dashboard"

---

## Done! ✅

Your dashboard is live. Here's what you can do now:

| Action | How |
|--------|-----|
| View your dashboard | "Show me my dashboard" |
| Prep for a call | Click customer name in Cadence Calls section |
| Mark item as done | Click ✓ (comms) or × (actions) |
| Toggle dark mode | Click 🌙 in top-right |
| Get morning briefing | Runs automatically at 8:00 AM (or say "run daily kickoff") |
| Weekly review | "Run my weekly review" |

---

## Optional: Customize Your Setup

After the initial setup, you can personalize:

| What | How |
|------|-----|
| Change customer tier | Edit `~/Documents/tam-workspace/customers/[name]/profile.md` |
| Add SSP milestones | Tell Quick: "Add SSP milestone for [customer]: [description]" |
| Change morning briefing time | Settings → Scheduled Tasks → Daily Kickoff → edit schedule |
| Add more data sources | Settings → Capabilities → Connections |

---

## FAQ

**Q: Where is my data stored?**  
A: Everything is local on your machine (`~/Documents/tam-workspace/`). Nothing goes to the cloud except API calls to connected services.

**Q: How often does the dashboard refresh?**  
A: Activity monitor checks every 15 minutes. Morning briefing runs daily. You can also say "refresh my dashboard" anytime.

**Q: Do I need to code anything?**  
A: No. Zero code. Just connect tools and give your alias.

**Q: Can I customize the dashboard look?**  
A: Yes — it's just an HTML file. Edit it directly or ask Quick to modify sections.

**Q: What if I have new customers later?**  
A: Just say "Add [customer name] to my dashboard" and Quick will set it up.

**Q: What Skills come pre-installed?**  
A: Seven workflows: Daily Kickoff, Daily Focus Recommender, Weekly Review, Cadence Call Prep, Customer Onboarding, Infrastructure Discovery, Support Plan Builder.

---

## Need Help?

- **Slack:** Message Amar Kutwal (akkutwal)
- **Email:** akkutwal@amazon.nl
- **Source code:** https://gitlab.aws.dev/project-ulduz/tam-operational-excellence

---

*Time to set up: ~10 minutes (3 minutes active, rest is automatic)*
