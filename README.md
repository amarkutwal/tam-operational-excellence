# TAM Operational Excellence Workspace

**Owner:** Amar Kutwal (akkutwal)
**Manager:** Nick Majedi
**Created:** April 21, 2026

## Purpose

This workspace contains the operational excellence playbook, daily/weekly customer SOPs, and AI workflow configurations built using Kiro. The goal is to create repeatable, automated workflows that any TAM can adopt to improve their daily operations.

## Project Structure

```
tam-operational-excellence/
├── .kiro/
│   ├── steering/              ← Persistent rules and context for Kiro
│   │   ├── tam-context.md     ← Your TAM role, customers, and preferences
│   │   └── workflow-standards.md ← Standards for building workflows
│   └── hooks/                 ← Automated triggers
│       └── daily-kickoff.json ← Manual trigger for morning routine
├── customers/
│   ├── _template/             ← Template for new customer folders
│   └── README.md              ← How to use customer folders
├── sops/
│   ├── daily-kickoff.md       ← Morning SOP - run every day
│   ├── daily-focus-recommender.md ← AI-powered daily priority planner
│   ├── weekly-review.md       ← Weekly review SOP
│   ├── cadence-call-prep.md   ← Pre-meeting prep SOP
│   ├── customer-onboarding.md ← New customer setup automation
│   ├── infrastructure-discovery.md ← Customer workload mapping
│   └── support-plan-builder.md ← Automated SSP creation
├── playbook/
│   └── operational-excellence.md ← The deliverable playbook for other TAMs
├── presentations/
│   ├── ai-tools-for-tams.md   ← Presentation: AI workflow demo
│   └── containers-session.md  ← Presentation: EKS/containers topic
└── README.md                  ← This file
```

## Quick Start

1. Open this workspace in Kiro
2. The steering files will automatically load your TAM context
3. Use the daily kickoff hook or ask Kiro to "run my morning SOP"
4. Customize customer folders as you onboard customers

## Backup & Recovery

This workspace is designed to be stored in a Git repository (CodeCommit/GitHub) so it survives laptop loss. See the "Backup" section below.

### Recommended: Push to CodeCommit
```bash
git init
git remote add origin codecommit::us-east-1://tam-operational-excellence
git add .
git commit -m "Initial workspace setup"
git push -u origin main
```

### Alternative: Sync to OneDrive
If you prefer OneDrive, symlink this folder:
```bash
ln -s ~/tam-operational-excellence ~/OneDrive\ -\ Amazon/tam-operational-excellence
```

## Related Tools

- **UNO Agent** — Pre-built TAM SOPs (cadence call prep, case analysis, etc.)
- **TamTools** — Workload discovery, pitch generation, case analysis
- **Kiro** — Where you build and customize your own workflows
