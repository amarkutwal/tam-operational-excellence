# Operational Excellence Playbook for TAMs
### Using Kiro and GenAI Tools

**Author:** Amar Kutwal (akkutwal)  
**Version:** 0.1 (Draft)  
**Last Updated:** April 21, 2026

---

## Executive Summary

This playbook provides a practical guide for TAMs to leverage AI tools (Kiro, UNO Agent, Agent Spaces) to automate repetitive tasks, maintain customer context, and improve daily operational efficiency. It includes time blocking strategies, reusable templates, and automation workflows that any TAM can adopt.

---

## 1. The Problem

TAMs juggle multiple customers, each with their own:
- Support cases and escalations
- SSP milestones and action items
- Cadence calls requiring prep
- Emails, Slack messages, and ad-hoc requests
- Cost optimization opportunities
- Health events and maintenance windows

With 5-6 customers per TAM (and growing), doing this manually doesn't scale.

## 2. The Solution: AI-Assisted Workflows

### Tool Landscape

| Tool | Best For | Access |
|------|----------|--------|
| **UNO Agent** | Pre-built TAM SOPs (cadence prep, case analysis, onboarding) | Agent Spaces or Kiro CLI |
| **Kiro IDE** | Building custom workflows, steering files, hooks, documentation | Local install |
| **Agent Spaces** | Cloud-based agent workspace, no local setup | Browser |
| **TamTools** | Workload discovery, pitch generation | Via UNO |

### When to Use What
- **Quick daily tasks** → UNO in Agent Spaces (email summary, ticket check)
- **Custom workflows** → Kiro (build your own SOPs, steering, hooks)
- **Customer deep dives** → UNO + TamTools (workload discovery, case analysis)
- **Documentation & presentations** → Kiro (structured workspace, version control)

## 3. Time Blocking Strategy

### Recommended Daily Schedule

| Time Block | Activity | Tool |
|------------|----------|------|
| 8:00 - 8:15 | Morning kickoff SOP | Kiro hook or UNO |
| 8:15 - 9:00 | Urgent items from briefing | Manual |
| 9:00 - 12:00 | Customer work (cadence calls, cases, SSP) | UNO for prep |
| 12:00 - 1:00 | Lunch | — |
| 1:00 - 3:00 | Deep work (SSP building, proactive recommendations) | Kiro |
| 3:00 - 4:00 | Follow-ups, email responses | UNO |
| 4:00 - 4:30 | Initiative work (this playbook, presentations, certifications) | Kiro |
| 4:30 - 5:00 | End-of-day wrap-up, prep for tomorrow | Manual |

### Weekly Rhythm

| Day | Focus |
|-----|-------|
| Monday | Weekly planning, catch up on weekend emails |
| Tuesday-Thursday | Customer delivery, cadence calls |
| Friday | Weekly review SOP, next week planning, initiative work |

## 4. Automation Workflows

### 4.1 Daily Kickoff (see `sops/daily-kickoff.md`)
- Automated email triage
- Ticket status overview
- Calendar + meeting prep
- Health event check
- Priority list generation

### 4.2 Weekly Review (see `sops/weekly-review.md`)
- Week summary metrics
- SSP progress tracking
- Customer health scorecards
- Trend analysis
- Next week planning

### 4.3 Cadence Call Prep (see `sops/cadence-call-prep.md`)
- Case summary with severity highlighting
- Action item tracking
- Cost trends
- AI-generated talking points

## 5. Template Utilization

### Customer Folder Template
Every customer gets a standardized folder (see `customers/_template/`):
- `profile.md` — Account details, contacts, key workloads
- `ssp-tracker.md` — Milestone tracking
- `action-items.md` — Running action item list

### SOP Template
All SOPs follow a consistent format (see `.kiro/steering/workflow-standards.md`):
- Purpose, frequency, prerequisites
- Step-by-step instructions
- Expected output
- Customization options

## 6. Getting Started

### For TAMs New to AI Tools

1. **Week 1:** Install UNO, run TAM onboarding SOP, try cadence call prep
2. **Week 2:** Set up this Kiro workspace, customize customer folders
3. **Week 3:** Start running daily kickoff SOP, iterate on what works
4. **Week 4:** Run weekly review, refine workflows, share feedback

### For TAMs Already Using UNO

1. Clone this workspace for the Kiro-specific customizations
2. The SOPs here complement UNO's built-in SOPs
3. Use Kiro for building workflows that UNO doesn't cover yet

## 7. Measuring Success

| Metric | Before | Target |
|--------|--------|--------|
| Morning prep time | 30-45 min | 10-15 min |
| Cadence call prep | 20-30 min | 5 min |
| Weekly review | 1-2 hours | 30 min |
| Context switching between tools | High | Low (single workspace) |

---

## Appendix A: UNO Quick Reference

### Installation
```bash
aim agents install UNO
kiro-cli chat --agent uno-tam
```

### Most Used SOPs
- `@agent-sop:tam-onboarding` — First-time setup
- `@agent-sop:cadence-call-prep` — Meeting prep
- `@agent-sop:workload-discovery` — Customer infrastructure discovery
- `@agent-sop:cdp-pitch-generation` — CDP pitch docs
- `@agent-sop:case-analysis` — Support case analysis

## Appendix B: Kiro Quick Reference

### Key Concepts
- **Steering** — Persistent rules in `.kiro/steering/`
- **Hooks** — Automated triggers in `.kiro/hooks/`
- **MCP Servers** — Tool connections in `.kiro/settings/mcp.json`

---

*This is a living document. Update it as you discover new workflows and optimizations.*
