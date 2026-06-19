# Project Ulduz — Status Update

## Latest: Jun 19, 2026

### ✅ Completed This Week (Jun 15–19)
- **Dashboard v7 shipped** — major UX + automation improvements:
  - Auto-hide past meetings (date-based JavaScript filtering)
  - Persistent mark-as-done (localStorage for comms, followups, meetings)
  - Future meetings stay visible (green "prepped" indicator, never hidden)
  - Monitoring agent now writes directly to dashboard HTML (file_edit access)
  - Slack action detection rules (flags messages directed at TAM, skips noise)
  - Deduplication logic (agent checks before adding new cards)
- **Monitoring agent upgraded** — `tam-dashboard-refresh` now:
  - Checks 6 customer folders + Project/ToDo + inbox + Slack channels + calendar
  - Detects colleague collaboration requests (e.g. Abdullah wanting to replicate EBA)
  - Writes new followup-cards and meeting-cards directly into HTML
  - Posts to activity feed (important vs fyi based on urgency)
- **DevOps Agent EBA trip report** shared with TAM-EMEA-North
  - Abdullah Siddiqui (UK) wants to replicate for his customer — meeting scheduled next week
  - Demonstrates replicable format for any TAM (promotion evidence)
- **P&V account team onboarded** — added to #aws-p-and-v-account-team, intro from Shailesh Jain
- **Setup guide updated** — added Features section with all capabilities listed
- **Explainer doc updated** — added Smart Features appendix (technical details)

### Previous (Jun 16)
- TAM Dashboard v6 finalized — all 20+ sections, real data, Calendar
  - 6 customers: APS, BlockTech, P&V, ReBound, Vopak, Yenlo
  - CMC case links from Case Summary Report
  - Calendar — Week view
  - Auto-reload every 15 min in browser
  - Mark-done persistence via localStorage (browser)
  - Dark mode, collapsible sections, info icons all working
- **15-min refresh task** running — pulls Outlook + Slack + Calendar, updates HTML file
- **Setup guide updated** — correct filename, browser note, Calendar feature
- **Skills folder** pushed to GitLab with all 8 skills (setup + 7 workflows)
- **Diego Espinoza** (another TAM) asked for setup steps — traction from TAM Summit!
- **Magesh** confirmed interest — will follow setup guide

### In Progress
- TAM Summit presentation delivered (Jun 11) — follow-up adoption happening
- Abdullah Siddiqui EBA replication — meeting next week (Tue/Wed/Thu)
- Monday EKS Upgrade presentation at Benelux In-Person Team Meeting
- Yenlo Private Pricing call today (Alessandra leads, 4PM)
- ReBound DevOps Agent Integration call (Wed Jun 17, 1PM)

### Architecture
- Dashboard file: `~/Documents/myKiro_ENV/tam-operational-excellence/tam-live-dashboard.html`
- Viewed in: Browser (Chrome/Safari) — NOT Quick viewer (sandbox limits)
- Refresh: Scheduled task `tam-dashboard-refresh` every 15 min
- Repo: `git@ssh.gitlab.aws.dev:project-ulduz/tam-operational-excellence.git`
- GitHub backup: `https://github.com/amarkutwal/tam-operational-excellence.git`

### Adoption
| TAM | Status |
|-----|--------|
| Amar (akkutwal) | ✅ Live — full dashboard running |
| Magesh (mageshpj) | 🟡 Interested — will clone repo |
| Diego (despinoc) | 🟡 Asked for setup steps today |
| Abdullah (abdlsidd) | 🟡 Wants to replicate DevOps EBA — meeting next week |
| Shailesh (jshailj) | 🟡 P&V SA — offered internal intro call |
