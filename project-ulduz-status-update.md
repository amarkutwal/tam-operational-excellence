# Project Ulduz — Status Update

**Last updated:** Sunday, June 14, 2026 — 13:02 CEST  
**Updated by:** Amazon Quick (automated)

---

## 🟢 Current Phase: Phase 2 — Live Data

### TAM Summit Presentation: ✅ DELIVERED (Jun 11, 2026)
- Session title: "Automating the TAM Day: Custom Workflows for Portfolio Scale"
- Track A, Room 07.508, 11:30 AM — 30 min slot
- Format: 10 min slides + 10 min live demo + 10 min Q&A
- **Result: Successful** — multiple TAMs approached afterwards to set up the same dashboard
- Next: Onboarding guide created for interested TAMs

---

## 📊 Dashboard Version History

| Version | Date | Key Changes |
|---------|------|-------------|
| v1 | May 22 | Initial: KPI cards, health scorecard, priority actions, SSP progress |
| v2 | Jun 1 | CHI scores, Strategic Focus Areas, Commitments tracking |
| v3 | Jun 4 | Data source legend, dismiss actions, risk trends |
| v4 | Jun 5 | ℹ️ Info icons (28), Command Center links, column tooltips, collapsible sections, checkmarks |
| v5 | Jun 8 | Completed items section, clickable cadence call prep, TAM Goals moved to last, Strategic Focus % clarified |
| **v6** | **Jun 8** | **Cost chart → bar, dark/light theme toggle** |

---

## ✅ Completed Since Last Update (Jun 5–14)

### Jun 5 (Friday) — Nick & Olu Review
- Dashboard reviewed as MVP for TAM Summit
- Nick feedback: simplify density, add show/hide, document data sources
- Session title changed: removed tool name → "Automating the TAM Day"
- Meeting summary saved

### Jun 7–8 (Sunday–Monday) — Sprint 3 Execution
- All 8 dashboard improvements from Nick/Olu meeting applied
- Data sources added to every info tooltip
- CHI Score → confirmed from CMC
- BlockTech priority fixed (2→1)
- Collapsible sections added (Nick's density feedback)
- Completed Items section (new) — tracks actioned items with timestamps
- Clickable cadence call prep — expands prep panel per customer
- TAM Goal Distribution moved to last + collapsed
- Cost chart → bar (Eric's suggestion)
- Dark/light theme toggle added
- Strategic Focus label → "% of time" clarified

### Jun 8 (Monday) — Eric Rehearsal
- 35-min rehearsal session with Eric Washington
- Confirmed 10/10/10 structure (slides/demo/Q&A)
- Questions during demo allowed
- Follow-up rehearsal done Jun 9
- AWS branding (logo + copyright) added to presentation

### Jun 8 (Monday) — Survey & Presentation
- Survey created: pulse.aws/survey/G0SHQ5YP (Pulse platform)
- QR code added to Slide 5
- Presentation finalized: 5 slides + live demo script

### Jun 11 (Wednesday) — TAM Summit ✅
- Presentation delivered successfully
- Multiple engineers approached for setup help
- Onboarding guide created (guides/tam-dashboard-setup-guide.md)

### Jun 14 (Sunday) — Phase 2 Transition
- Decision: Dashboard now uses REAL data (no more demo/sample)
- First live dashboard pull: 7 customers, 11 open cases
- Onboarding guide completed for other TAMs
- GitHub pushed (v6)

---

## 📁 Project Files

```
tam-operational-excellence/
├── tam-portfolio-dashboard.html          ← Main dashboard (v6, live)
├── tam-portfolio-dashboard-explainer.md  ← Section-by-section guide
├── minimum-engagement-delivery-framework.md
├── project-ulduz-status-update.md        ← This file
├── README.md
├── guides/
│   └── tam-dashboard-setup-guide.md      ← NEW: Onboarding for other TAMs
├── presentations/
│   ├── tam-summit-presentation.pptx      ← Final deck (AWS branded)
│   └── tam-summit-live-demo-script.md    ← Demo talking points
├── sops/                                 ← 7 operational SOPs
├── customers/                            ← Customer profiles
├── playbook/                             ← Operational Excellence playbook
└── versions/                             ← Historical dashboard versions
```

---

## 🔄 Pending Actions

| Item | Owner | Due | Status |
|------|-------|-----|--------|
| GitLab push (SSH key fix needed) | Amar | This week | ⏳ |
| Share onboarding guide with interested TAMs | Amar | Mon Jun 15 | ⏳ |
| Qualcomm CRITICAL case follow-up | Amar | Mon Jun 15 | ⏳ |
| PostNL URGENT case (44d aging) escalation review | Amar | Mon Jun 15 | ⏳ |
| Prep for Yenlo Private Pricing meeting (Tue 16) | Amar | Tue Jun 16 | ⏳ |
| 1:1 with Nick (Wed 17) — share TAM Summit success | Amar | Wed Jun 17 | ⏳ |
| Amazon Quick Builder session with Magesh (Mon 15) | Amar | Mon Jun 15 | ⏳ |
| Schedule Min Engagement Framework review with Nick | Amar | This week | ⏳ |

---

## 📈 Key Metrics

| Metric | Value | Trend |
|--------|-------|-------|
| Active Customers | 7 | ↑ (+3 since project start) |
| Open Cases | 11 | — |
| Dashboard version | v6 | 6 iterations in 3 weeks |
| Custom Skills | 7 | Stable |
| TAMs interested in setup | Multiple | NEW (post-summit) |
| GitHub commits | ~8 | Active development |
