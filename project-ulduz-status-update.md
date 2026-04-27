# Project Ulduz — Status Update
### Prepared by: Amar Kutwal (akkutwal)
### Date: April 27, 2026
### For: Diego (despinoc@), Oluwakorede (awobad@), Nick Majedi (manager)

---

## Summary

I've built the foundation for our operational excellence initiative. The workspace is live, version-controlled on GitHub, and ready for testing with real customers this week.

**GitHub Repo:** https://github.com/amarkutwal/tam-operational-excellence

---

## What's Been Built

### 7 Custom SOPs (Standard Operating Procedures)

| # | SOP | Purpose | Frequency |
|---|-----|---------|-----------|
| 1 | **Daily Kickoff** | Morning briefing — emails, tickets, calendar, health events, priority list | Daily |
| 2 | **Daily Focus Recommender** | Scores all customers by urgency, generates prioritized action plan with TAM goal mapping | Daily |
| 3 | **Weekly Review** | Week summary, SSP progress, customer health scorecards, next week planning | Weekly (Friday) |
| 4 | **Cadence Call Prep** | Pre-meeting prep — cases, action items, cost trends, talking points | Before each cadence call |
| 5 | **Customer Onboarding** | Automated new customer setup — folders, CMC data, admin checklist, infra overview, SSP draft | Per new customer |
| 6 | **Infrastructure Discovery** | Full AWS footprint mapping — services, compute, data, security, cost, EOL/EOS, resilience | Onboarding + quarterly |
| 7 | **Support Plan Builder** | Auto-generates SSP milestones from customer data, checks time allocation feasibility | Per SSP cycle |

### Operational Excellence Playbook (Draft v0.2)
- Time blocking strategy for TAMs managing 8-12 customers
- Tool comparison: Kiro vs UNO vs Agent Spaces (when to use what)
- Template system for customer folders and SOPs
- Success metrics with before/after targets
- Diego's Obsidian approach documented alongside Kiro-native equivalent

### Workspace Infrastructure
- **4 Kiro Hooks** — one-click triggers for Daily Kickoff, Focus Recommender, Weekly Review, and Customer Onboarding
- **2 Steering Files** — persistent TAM context and workflow standards (auto-loaded every session)
- **Customer folder templates** — standardized profile, SSP tracker, and action items per customer
- **7 MCP servers configured** — Outlook, Slack, SIM, AWS, Sentral, CCMT, Builder
- **Git version control** — backed up to GitHub, recoverable from any machine

### UNO Agent Spaces
- UNO-TAM installed and running on Agent Spaces
- Reviewed all UNO training materials (videos + wiki documentation)
- Understanding of how UNO's 44+ pre-built SOPs complement our custom Kiro SOPs

---

## How This Addresses the Scaling Challenge

| Challenge (from kickoff call) | How We're Solving It |
|------|------|
| 8-12 customers at 8% time each | Daily Focus Recommender prioritizes across ALL customers automatically |
| 25+ new EOP→Enterprise customers incoming | Customer Onboarding SOP automates setup in 30 min vs 2-3 hours |
| Manual morning prep takes 30-45 min | Daily Kickoff SOP reduces to 10-15 min |
| SSP creation is time-consuming | Support Plan Builder auto-drafts milestones from real customer data |
| No unified customer visibility | Customer folder structure + daily briefings provide single-pane view |
| Workflows not shareable | Git repo — any TAM can clone and customize |

---

## Proactive vs Reactive (Key Design Principle)

As discussed in the kickoff, everything is designed to be **proactive**:
- Focus Recommender tells you what to do BEFORE things escalate
- Infrastructure Discovery finds risks BEFORE they become incidents
- Support Plan Builder suggests milestones BEFORE the SSP review
- Weekly Review catches trends BEFORE they become problems

---

## Next Steps

| What | Target Date | Status |
|------|------------|--------|
| Test Daily Kickoff SOP with real customer | This week | Ready to test |
| Test Customer Onboarding with first EOP customer | This week | Ready to test |
| Run UNO tam-onboarding in Agent Spaces | This week | UNO installed, ready to run |
| Iterate SOPs based on real-world testing | Ongoing | — |
| Refine playbook to v1.0 | End of May | Draft v0.2 complete |
| Build presentation and demo for team | June | Outline ready |
| Weekly Tuesday syncs with Diego and Olu | Ongoing | Starting this week |

---

## Tools Setup Complete

| Tool | Status | Purpose |
|------|--------|---------|
| Kiro IDE | ✅ Configured with 7 MCP servers | Build and run custom workflows |
| UNO Agent Spaces | ✅ Installed and running | Pre-built TAM SOPs |
| GitHub | ✅ Repo live and backed up | Version control and sharing |

---

*Questions or feedback? Let's discuss in our Tuesday sync.*
