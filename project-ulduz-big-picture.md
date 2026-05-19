# Project Ulduz — Big Picture Overview

**Last Updated:** May 19, 2026

---

## What Is Project Ulduz?

An initiative to help TAMs manage significantly higher customer volumes (8-12 customers at 8% time each) through AI-powered automation using Kiro, UNO, and Amazon Quick Desktop.

---

## Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    TAM Daily Workflow                         │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │ Amazon Quick │  │  UNO Agent   │  │   Kiro IDE   │      │
│  │   Desktop    │  │   Spaces     │  │              │      │
│  │              │  │              │  │              │      │
│  │ • Dashboard  │  │ • Pre-built  │  │ • Custom SOP │      │
│  │ • Calendar   │  │   SOPs (99)  │  │   development│      │
│  │ • Email      │  │ • Dante/K2   │  │ • Testing    │      │
│  │ • Tasks      │  │ • Case mgmt  │  │ • Playbook   │      │
│  │ • Skills     │  │ • KB folders │  │ • Steering   │      │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘      │
│         │                  │                  │              │
│         └──────────────────┼──────────────────┘              │
│                            │                                 │
│                    ┌───────┴────────┐                        │
│                    │  7 Custom SOPs │ ← The Foundation       │
│                    │  (Amar built)  │                        │
│                    └───────┬────────┘                        │
│                            │                                 │
│              ┌─────────────┼─────────────┐                   │
│              │             │             │                   │
│         ┌────┴────┐  ┌────┴────┐  ┌────┴────┐              │
│         │ Outlook │  │ Sentral │  │  Slack  │              │
│         │  MCP    │  │   MCP   │  │   MCP   │              │
│         └─────────┘  └─────────┘  └─────────┘              │
│              + AWS MCP, Support MCP, CCMT MCP, Asana MCP    │
└─────────────────────────────────────────────────────────────┘
```

---

## What's Been Built

### 7 Custom SOPs (by Amar)

| # | SOP | Purpose | File |
|---|-----|---------|------|
| 1 | [Daily Kickoff](sops/daily-kickoff.md) | Morning briefing with SSP mapping | `sops/daily-kickoff.md` |
| 2 | [Daily Focus Recommender](sops/daily-focus-recommender.md) | Priority scoring across all customers | `sops/daily-focus-recommender.md` |
| 3 | [Weekly Review](sops/weekly-review.md) | End-of-week summary and next week planning | `sops/weekly-review.md` |
| 4 | [Cadence Call Prep](sops/cadence-call-prep.md) | Pre-meeting customer briefing | `sops/cadence-call-prep.md` |
| 5 | [Customer Onboarding](sops/customer-onboarding.md) | New customer setup automation | `sops/customer-onboarding.md` |
| 6 | [Infrastructure Discovery](sops/infrastructure-discovery.md) | Customer AWS footprint mapping | `sops/infrastructure-discovery.md` |
| 7 | [Support Plan Builder](sops/support-plan-builder.md) | Automated SSP milestone generation | `sops/support-plan-builder.md` |

### Quick Desktop Skills (by Olu)

- 7 Project Ulduz SOPs converted to Quick Skills
- 99 UNO TAM SOPs converted to Quick Skills
- TAM Dashboard with scheduled daily refresh
- Knowledge base imported from UNO
- **Repo:** [gitlab.aws.dev/awobad/tam-quick-skills](https://gitlab.aws.dev/awobad/tam-quick-skills)

### Playbook & Documentation (by Amar)

| Document | Purpose | File |
|----------|---------|------|
| [Operational Excellence Playbook](playbook/operational-excellence.md) | Practical guide for TAMs | `playbook/operational-excellence.md` |
| [Roles & Responsibilities](project-ulduz-roles-and-responsibilities.md) | Who does what | `project-ulduz-roles-and-responsibilities.md` |
| [Ideas Tracker](project-ulduz-ideas-tracker.md) | Feature requests and conversation log | `project-ulduz-ideas-tracker.md` |
| [Status Update](project-ulduz-status-update.md) | Progress summary for stakeholders | `project-ulduz-status-update.md` |

### Presentations (by Amar)

| Presentation | Status | File |
|---|---|---|
| [DevOps Agent: Database Troubleshooting](presentations/devops-agent-database-troubleshooting.md) | Outline + speaker notes done | Mid-May deadline |
| [Kiro Workflows for TAMs (TAM Summit)](presentations/ai-tools-for-tams.md) | In progress | Mid-June |
| [Containers Operational Support](presentations/containers-session.md) | Outline | End of June |

---

## Repositories

| Repo | Owner | Contents | Access |
|------|-------|----------|--------|
| [github.com/amarkutwal/tam-operational-excellence](https://github.com/amarkutwal/tam-operational-excellence) | Amar | SOPs, playbook, hooks, presentations | Private (add collaborators) |
| [gitlab.aws.dev/awobad/tam-quick-skills](https://gitlab.aws.dev/awobad/tam-quick-skills) | Olu | Quick Desktop skills (converted SOPs) | Internal |

---

## Tools & Integrations

| Tool | Purpose | Who Uses It |
|------|---------|-------------|
| **Kiro IDE** | Build and customize SOPs, presentations, documentation | Amar |
| **Amazon Quick Desktop** | Visual dashboard, email/calendar/task integration, scheduled agents | Olu, Diego |
| **UNO TAM (Agent Spaces)** | Pre-built TAM SOPs, Dante scripts, case management | All |
| **GitHub** | Version control for SOPs and playbook | Amar (owner), Olu (collaborator) |
| **GitLab** | Quick Skills repository | Olu (owner) |
| **Asana** | Project tracking, Q2 action plan | Amar, Nick |
| **Slack (#project-ulduz)** | Team communication | All |

---

## MCP Servers Connected (Amar's Setup)

| # | Server | Tools | Purpose |
|---|--------|:-----:|---------|
| 1 | aws-outlook-mcp | 15 | Email, calendar, contacts |
| 2 | builder-mcp | 4 | Internal search, wiki, code, tickets |
| 3 | aws-mcp | 8 | AWS API calls |
| 4 | aws-support-troubleshooting-mcp | — | Dante, SOPs, case troubleshooting |
| 5 | slack-mcp | 68 | Slack messaging and search |
| 6 | aws-sentral-mcp | 83 | PFRs, opportunities, SIFT, accounts |
| 7 | ccmt-mcp | 2 | Customer management, EC2 capacity |
| 8 | enterprise-asana-mcp | — | Asana task management |

---

## Key Decisions Made

| Date | Decision |
|------|----------|
| May 19 | Build reusable SOPs that work across tools — don't force one platform |
| May 19 | SSP mapping is customer-specific only — exclude internal projects |
| May 19 | Human-in-the-loop required for customer-facing recommendations |
| May 18 | Nick approved Option B (SOPs + existing tools for visual layer) |
| May 18 | Custom dashboard is overkill — leverage Quick Desktop instead |
| Apr 28 | GitHub for version control and collaboration |
| Apr 21 | Focus on proactive automation, not reactive |

---

## Success Metrics

| Metric | Before | Target | Current |
|--------|--------|--------|---------|
| Morning prep time | 30-45 min | 10-15 min | ~15 min (with SOP) |
| Cadence call prep | 20-30 min | 5 min | ~5 min (with UNO) |
| Weekly review | 1-2 hours | 30 min | ~30 min (with SOP) |
| Customer onboarding | 2-3 hours | 30 min | ~30 min (with SOP) |
| Customers manageable per TAM | 5-6 | 8-12 | 4 active + 2 pending |
| Proactive vs reactive time | 20/80 | 50/50 | Improving |

---

## Next Steps

1. Finalize Option B demo for TAM Summit
2. Start Minimum Engagement Delivery Framework (due end of May)
3. Confirm TAM Summit slot with Maryam
4. Record backup demo (Diego's suggestion)
5. Integrate Salesforce SSP when available (next few months)
