# TAM Dashboard Evolution — Progress & Next Steps
> Updated: Wed Jun 24, 2026 — 17:44 CEST

## What We Built Today

### ✅ 1. Customer Strategic Intelligence Files (DONE)
Per-customer `.md` files that store dynamic research data:
- `customers/rebound-cycleon/strategic-intelligence.md`
- `customers/allied-publicity/strategic-intelligence.md`
- `customers/blocktech-bv/strategic-intelligence.md`
- `customers/yenlo/strategic-intelligence.md`
- `customers/p-and-v/strategic-intelligence.md`
- `customers/vopak/strategic-intelligence.md`

Each file has: Active Signals table, Strategic Opportunities (prioritized), SSP Alignment, Communication Patterns, Research Notes.

### ✅ 2. Weekly Deep Research Agent (DONE — `tam-weekly-research`)
- **Schedule:** Every Monday at 06:00 CEST
- **Model:** Smart (with medium thinking)
- **What it does:** Autonomously researches all 6 customers via Outlook + Slack, detects new signals, updates intelligence files, refreshes dashboard strategic section
- **Status:** ENABLED

### ✅ 3. Enhanced Refresh Agent (DONE — `tam-dashboard-refresh` v2)
- **Schedule:** Every 15 minutes
- **New capability:** Strategic Signal Quick-Scan
- On every cycle, scans already-fetched email/Slack data for signal keywords (cost, health, security, modernization, EOS/EOL)
- When new signal detected → updates relevant customer intelligence file
- Timestamps now always update (bug fixed)
- **Status:** ENABLED

### ✅ 4. Dynamic Dashboard Timestamps (DONE)
- All "Last updated" / "Last full sync" timestamps now use JavaScript `dayjs()` 
- Shows current time on every browser refresh — no more stale dates

### ✅ 5. Dashboard Strategic Section (Already existed)
- "Strategic Engagement Opportunities" section with per-customer cards
- Now linked to intelligence files — refresh agent + weekly agent both update it

### ✅ 6. Dante/K2 MCP Server Connected & Tested (DONE)
- `aws-support-troubleshooting-mcp` installed via toolbox and added to Quick Desktop
- Tested live: pulled ReBound EC2 instances (34) + VPN status (Tunnel 2 DOWN confirmed)
- Weekly research agent tool policy updated to include Dante MCP
- ReBound strategic intelligence file updated with live infra data
- **This is exactly what Nick does with Kiro + Dante → we now have it in Quick Desktop**

---

## Research Findings: UNO TAM Agent, Dante, Luna

### UNO TAM Agent (CONFIRMED — from internal wiki)
- **Install:** `aim agents install UNO` → `kiro-cli chat --agent uno-tam`
- **70 SOPs** including: cadence-call-prep, customer-intelligence-briefing, weekly-customer-pulse, morning-dashboard, graviton-migration-assessment, cost-opt, security-posture-review, case-trend-analysis
- **MCP Servers it uses:**
  - `aws-support-troubleshooting-mcp` — **THIS IS DANTE** (K2 + Dante: AWS API calls into customer accounts)
  - `ent-support-genai-mcp` — CMC, Cases, SIM, KCR, Harbinger
  - `aws-sentral-mcp` — SIFT insights and PFRs
  - `nautilus-mcp` — Customer account insights
  - `ccmt-mcp` — EC2 capacity management
  - `strategic-dante-mcp` — Dante for XXL customer accounts
- **Knowledge Base:** `~/shared/tam-work/<customer>/` with profiles, engagement history, architecture docs
- **Wiki:** https://w.amazon.com/bin/view/AWS/Teams/AWSSupportGenAIHub/ESHomePage/ESOpEfficiencyInnovation/MCPServer/UNOAgents/
- **Slack:** #uno-agents-interest
- **Integration with Quick Desktop:** builder_mcp already connected. Can potentially add `aws-support-troubleshooting-mcp` (Dante) and `ent-support-genai-mcp` as additional MCP servers to Quick.

### Dante Scripts (CONFIRMED)
- **What it is:** AWS API calls into customer accounts via K2 infrastructure
- **Access:** Via `aws-support-troubleshooting-mcp` MCP server
- **What it provides:** Customer resource configuration data (EC2 instances, services, infrastructure topology, health, costs)
- **How Nick uses it:** UNO → Dante pulls customer data → exports to .md files → stores in knowledge base → syncs to OneDrive
- **How we can use it:** Add `aws-support-troubleshooting-mcp` to Quick Desktop → weekly research agent calls Dante → writes to our `strategic-intelligence.md` files → dashboard auto-updates

### Luna (from earlier research)
- **URL:** https://prod.luna.support.aws.dev
- **What it does:** Fully managed SaaS for TAM customer data aggregation + automated report generation (MBR, 2BR, Cost Wrangler, ESSR)
- **Uses:** Bubblewand (S3 accounts), Kumo SCP (auth), Dante (infrastructure data)
- **MCP integration:** On roadmap (Q1 2026 was planned — may be available now)
- **Status:** Worth checking if MCP is live; if yes, can integrate with Quick

---

## Next Steps (to complete by July 15)

### This Week (Jun 24-30) — Remaining items:
1. **[ ] Install UNO TAM Agent locally** — `aim agents install UNO`
2. **[ ] Test Dante data pull** — Run `@agent-sop:uno-customer-intelligence-briefing` for one customer (e.g. ReBound) and capture the output
3. **[ ] Add `aws-support-troubleshooting-mcp` to Quick Desktop** — In Settings → Capabilities → MCP Servers
4. **[ ] Push all code to repo** — `git add -A && git commit && git push origin main && git push gitlab main`
5. **[ ] Trigger first weekly research run** — Test the tam-weekly-research agent manually

### Week 2 (Jul 1-7):
6. **[ ] Full Dante integration** — Weekly agent pulls Dante data per customer → updates intelligence files
7. **[ ] Auto-proposal engine** — Signal-to-engagement mapping with confidence scoring
8. **[ ] Luna access check** — Is MCP live? If yes, integrate for automated reports
9. **[ ] Document methodology** — Start writing the "how this works" guide for other TAMs

### Week 3 (Jul 8-15):
10. **[ ] End-to-end validation** — Test full cycle: Dante pull → KG update → intelligence file → dashboard → feed notification
11. **[ ] Impact metrics** — Measure time saved, engagement quality
12. **[ ] Demo for Nick** — Show complete proactive workflow
13. **[ ] Share with team** — Post in relevant Slack channels

---

## Architecture Summary

```
┌─────────────────────────────────────────────────────────────┐
│                    DATA SOURCES                               │
├──────────┬──────────┬──────────┬──────────┬────────────────┤
│ Outlook  │  Slack   │ Calendar │  Dante   │ Luna (future)  │
│ (emails) │ (msgs)   │ (events) │ (infra)  │ (reports)      │
└────┬─────┴────┬─────┴────┬─────┴────┬─────┴────────┬───────┘
     │          │          │          │              │
     ▼          ▼          ▼          ▼              ▼
┌─────────────────────────────────────────────────────────────┐
│              AGENTS (Quick Desktop)                           │
├──────────────────────────┬──────────────────────────────────┤
│ tam-dashboard-refresh    │  tam-weekly-research              │
│ (every 15 min)           │  (Monday 06:00)                  │
│ • Reactive actions       │  • Deep customer research        │
│ • Strategic signal scan  │  • Dante data pull               │
│ • Timestamp updates      │  • Opportunity detection         │
└────────────┬─────────────┴──────────────┬───────────────────┘
             │                            │
             ▼                            ▼
┌─────────────────────────────────────────────────────────────┐
│              INTELLIGENCE LAYER                               │
├────────────────────────┬────────────────────────────────────┤
│ strategic-intelligence │  Knowledge Graph                    │
│ .md (per customer)     │  (entities + relationships)         │
└────────────┬───────────┴────────────────┬───────────────────┘
             │                            │
             ▼                            ▼
┌─────────────────────────────────────────────────────────────┐
│              PRESENTATION LAYER                               │
├──────────────────────────────────────────────────────────────┤
│            tam-live-dashboard.html                            │
│  • Reactive section (MUST DO / SHOULD DO / STRATEGIC)        │
│  • Strategic Engagement Opportunities (per customer)          │
│  • SSP Milestone Progress                                    │
│  • KPI Cards                                                 │
│  • Dynamic timestamps (JS)                                   │
└──────────────────────────────────────────────────────────────┘
```
