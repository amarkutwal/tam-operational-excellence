# TAM Customer Portfolio — Amar Kutwal

> **AWS Technical Account Manager** · Amar Kutwal · `akkutwal@amazon.com`
> Last updated: 2026-05-21

This folder is the single source of truth for all customer engagement materials across Amar's TAM portfolio. Every customer has a consistent subfolder structure to make navigation fast and content easy to find — whether you're prepping for a call, updating an SSP milestone, or drafting an async email.

---

## 📁 Portfolio Overview

| Customer | Folder | Notes |
|----------|--------|-------|
| ReBound / Cycleon | `ReBound-Cycleon/` | |
| BlockTech BV | `BlockTech-BV/` | |
| Vopak | `Vopak/` | Includes `Partner-Rules/` subfolder |
| Allied Publicity / APS | `Allied-Publicity-APS/` | |
| PV Assurances | `PV-Assurances/` | |
| Yenlo Cloud Services | `Yenlo-Cloud-Services/` | |
| 📐 Templates | `_Templates/` | Reusable starter files — see below |

---

## 🗂️ Standard Subfolder Structure

Each customer folder contains the following subfolders:

```
[Customer-Name]/
├── Meeting-Notes/       ← Cadence calls, ad-hoc meetings, EBCs, QBRs
├── SSP/                 ← Support Success Plan milestones & tracking docs
├── Action-Items/        ← Outstanding and completed action item trackers
├── Communications/      ← Email threads, Teams message exports, async updates
├── Reports/             ← Monthly/quarterly reports, cost analyses, WA reviews
├── Infrastructure/      ← Architecture diagrams, service inventories, discovery notes
└── Onboarding/          ← First-90-days docs, admin checklists, initial setup notes
```

> **Vopak only** also has a `Partner-Rules/` folder for partner engagement guidelines and rules of engagement.

---

## 📐 Templates (`_Templates/`)

Copy any template into the relevant customer subfolder and rename using the convention below before filling it in.

| Template File | Use It For | Naming Convention |
|---------------|------------|-------------------|
| `meeting-notes-template.md` | Any cadence call or customer meeting | `YYYY-MM-DD-[Customer]-[Type].md` |
| `ssp-milestone-template.md` | Defining or tracking an SSP milestone | `SSP-[Customer]-[Milestone-Name].md` |
| `async-update-template.md` | Monthly async email/Teams update | `YYYY-MM-[Customer]-async-update.md` |
| `customer-profile-template.md` | Customer profile & relationship card | `[Customer]-profile.md` |

**Example workflow — new meeting notes:**
```
1. Copy _Templates/meeting-notes-template.md
2. Paste into [Customer]/Meeting-Notes/
3. Rename: 2026-05-21-ReBound-Monthly-Cadence.md
4. Fill in attendees, agenda, discussion, and action items
```

---

## 📏 File Naming Conventions

| Type | Pattern | Example |
|------|---------|---------|
| Meeting notes | `YYYY-MM-DD-[Customer]-[MeetingType].md` | `2026-05-21-Vopak-Monthly-Cadence.md` |
| SSP milestone | `SSP-[Customer]-[Milestone-Short-Name].md` | `SSP-BlockTech-Well-Architected-Review.md` |
| Async update | `YYYY-MM-[Customer]-Async-Update.md` | `2026-05-Yenlo-Async-Update.md` |
| Report | `YYYY-MM-[Customer]-[ReportType].md` | `2026-Q2-PV-Assurances-QBR.md` |
| Action tracker | `[Customer]-Action-Items-[YYYY].md` | `Allied-Publicity-Action-Items-2026.md` |

> **Rule:** Always use hyphens instead of spaces. This ensures compatibility with OneDrive sync, macOS, and any scripting/automation tools.

---

## 🔄 Recommended Weekly Workflow

1. **Monday AM** — Check `Action-Items/` for each customer. Update statuses.
2. **Before each call** — Review `Meeting-Notes/` for last session notes. Prep agenda.
3. **After each call** — Create new meeting notes file from template. File action items.
4. **Monthly** — Send async update using `async-update-template.md`. Save copy in `Communications/`.
5. **Monthly** — Update SSP milestone files in `SSP/` with progress log entry.

---

## 🏗️ Folder Structure (Full Tree)

```
TAM-Customers/
├── README.md                          ← You are here
├── _Templates/
│   ├── meeting-notes-template.md
│   ├── ssp-milestone-template.md
│   ├── async-update-template.md
│   └── customer-profile-template.md
├── ReBound-Cycleon/
│   ├── Meeting-Notes/
│   ├── SSP/
│   ├── Action-Items/
│   ├── Communications/
│   ├── Reports/
│   ├── Infrastructure/
│   └── Onboarding/
├── BlockTech-BV/
│   ├── Meeting-Notes/
│   ├── SSP/
│   ├── Action-Items/
│   ├── Communications/
│   ├── Reports/
│   ├── Infrastructure/
│   └── Onboarding/
├── Vopak/
│   ├── Meeting-Notes/
│   ├── SSP/
│   ├── Action-Items/
│   ├── Communications/
│   ├── Reports/
│   ├── Infrastructure/
│   ├── Onboarding/
│   └── Partner-Rules/              ← Vopak-specific
├── Allied-Publicity-APS/
│   ├── Meeting-Notes/
│   ├── SSP/
│   ├── Action-Items/
│   ├── Communications/
│   ├── Reports/
│   ├── Infrastructure/
│   └── Onboarding/
├── PV-Assurances/
│   ├── Meeting-Notes/
│   ├── SSP/
│   ├── Action-Items/
│   ├── Communications/
│   ├── Reports/
│   ├── Infrastructure/
│   └── Onboarding/
└── Yenlo-Cloud-Services/
    ├── Meeting-Notes/
    ├── SSP/
    ├── Action-Items/
    ├── Communications/
    ├── Reports/
    ├── Infrastructure/
    └── Onboarding/
```

---

*Maintained by: Amar Kutwal · AWS TAM · akkutwal@amazon.com*
*Structure created: 2026-05-21*
