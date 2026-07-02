# Minimum Engagement Delivery Framework
## Structured Engagement for TAMs Supporting Customers at Scale

**Version:** 3.0
**Date:** July 2, 2026
**Audience:** TAMs managing 8-12 Enterprise Support customers with constrained time allocation

---

## Executive Summary

This framework describes how a TAM can deliver consistent, high-quality engagement when managing a large number of Enterprise Support customers. It covers how to segment customers by complexity, what baseline activities to run each year, and how to scale your impact through workshops, automation, and self-service tools.

The reality today is that TAMs are often supporting 8 to 12 customers at once. Many of these customers joined Enterprise Support recently, and they all expect the same quality of engagement. This framework helps you do that without burning out.

It is designed to be generic. Any TAM team can use it regardless of portfolio size or customer mix.

---

## Understanding Strategic Support Plans (SSPs)

Before we get into the engagement model, it helps to understand the core deliverable that anchors everything: the Strategic Support Plan.

An SSP is the agreed plan between a TAM and their customer. It defines what the TAM will help the customer achieve over the next 12 months. The structure follows a standard format:

**Blueprints** are the top-level categories of work. Think of them as the big themes. Examples: "Improve operational resilience", "Strengthen security posture", "Optimize cost efficiency". Each SSP typically has 2 to 4 blueprints depending on customer complexity.

**Outcomes** sit within a blueprint. They describe the end result the customer wants to achieve. For example, under a "Strengthen security posture" blueprint, an outcome might be "All production workloads pass CIS benchmark checks".

**Initiatives** are the specific projects or actions that drive toward an outcome. An initiative might be "Enable Security Hub across all accounts and remediate critical findings".

**Success Criteria (ISCs)** are how you know the initiative is done. These are measurable and time-bound. For example: "Security Hub enabled in all 5 production accounts by end of Q2" or "Critical findings reduced from 47 to under 10 by Q3".

The engagement framework below feeds directly into SSP creation. The customer intelligence you gather through cadence calls, proactive monitoring, and infrastructure reviews becomes the raw material for building meaningful ISCs.

---

## 1. Customer Complexity Segments

Not every customer needs the same depth of engagement. Segmenting by complexity helps you allocate your time where it matters most. The segment determines how deep the SSP goes, how often you meet, and how many ISCs you plan for.

### 1.1 Segment Definitions

AWS business operations uses a two-dimensional segmentation model called Customer Allocation Segments. It combines customer size (revenue band) with complexity level (Low, Medium, High). The full list of segments is:

- AWS Rev <75k
- Small-Low, Small-Medium, Small-High
- Medium-Low, Medium-Medium, Medium-High
- Large-Low, Large-Medium, Large-High
- Top Customers
- XL Customers

The recommended allocations for the lower segments are:

- **AWS Rev <75k:** 8% allocation
- **Small-Low:** 8% allocation (roughly 3 hours per week)
- **Small-Medium:** 13% allocation (roughly 5 hours per week)
- **Small-High:** 20% allocation (roughly 8 hours per week)

The higher segments (Medium-Low through Large-High, Top Customers, XL Customers) carry progressively higher allocations as defined by business operations.

**What determines complexity?** The complexity dimension (Low, Medium, High) is based on the customer's environment: number of accounts, number of regions, regulatory requirements, architecture depth, and how many teams interact with AWS. A "Small-Low" customer has few accounts, a simple architecture, and limited service usage. A "Small-High" customer may have similar revenue but a complex multi-account, multi-region setup with compliance needs. The same logic scales up through Medium and Large size bands.

**How this maps to SSPs:** Customers in lower complexity segments (Small-Low, AWS Rev <75k) will have 3 to 4 ISCs focused on quick wins. Medium complexity customers (Small-Medium, Medium-Low, Medium-Medium) typically need 5 to 7 ISCs. Higher complexity customers (Small-High, Medium-High, Large segments) need 8 to 10 ISCs spread across multiple blueprints.

### 1.2 Engagement Differences by Segment

The engagement model changes based on complexity, but one thing applies to all segments: one-to-many workshops. Every customer, regardless of complexity, can benefit from shared workshops. This is the most important scaling mechanism in this framework.

Here is how other dimensions differ:

**Cadence calls.** Lower complexity customers (Small-Low, AWS Rev <75k) meet monthly, and you can skip a month if there is nothing to discuss. Medium complexity customers meet monthly without exception. Higher complexity customers (Small-High and above) meet every two weeks.

**Support Business Reviews (SBRs).** Lower and medium complexity customers get an SBR twice a year. Higher complexity customers get one every quarter.

**SSP reviews.** Lower complexity customers review their SSP quarterly. Medium and higher complexity customers review monthly during the cadence call.

**Executive touch.** Lower complexity customers get a brief executive update twice a year. Medium complexity customers get one quarterly. Higher complexity customers get a monthly touch point with their executive sponsor.

**Proactive outreach.** For lower complexity customers, you reach out only when something needs attention. For medium complexity, you scan their environment weekly for things to flag. For higher complexity, you scan daily.

### 1.3 Segment Reassessment

Review your customer segments every quarter. Also reassess when something changes significantly: the customer adds or removes more than 5 accounts, their spend changes by more than 20 percent, they expand to a new region, or they tell you they need more (or less) engagement.

---

## 2. Annual Baseline Activities

### 2.1 Strategic Support Plan (SSP)

Every customer gets an SSP, regardless of segment. You create or renew it once a year (or at onboarding for new customers). The depth depends on the segment.

For a low complexity customer, the SSP takes about 2 hours to build. It will have 3 to 4 ISCs focused on quick, high-impact wins. For medium complexity, plan about 3 hours and 5 to 7 ISCs with a mix of short-term and longer-term initiatives. For high complexity, plan 4 to 5 hours and 8 to 10 ISCs that span multiple quarters and blueprints.

Once the SSP is live, you review progress during your regular cadence calls. Every quarter, you write a short progress summary for the customer. The SSP lives in Blueprint format on SharePoint.

**How to decide what goes into an SSP:** Ask yourself these questions for each customer. Is there a cost optimization opportunity worth pursuing? Is there a security gap that creates risk? Is there something reaching end-of-life within 12 months? Is there a single point of failure in their architecture? Has the customer asked for help with something specific? If yes to any of these, it becomes a candidate ISC.

### 2.2 Support Business Review (SBR)

The SBR is where you present back to the customer. It covers support metrics, SSP progress, and your recommendations for the next period.

For low complexity customers, the SBR is a 30-minute meeting that covers the basics: case metrics, top 3 recommendations, and what is coming up. For medium complexity, you add SSP progress and a forward-looking roadmap in a 45-minute session. For high complexity, you deliver a full 60-minute review with executive narrative and deeper analysis.

Every SBR should at minimum cover: support case trends, ISC progress, upcoming AWS changes that affect the customer, and your top recommendations.

### 2.3 Strategic Engagement

Beyond SSPs and SBRs, you maintain a regular engagement rhythm.

For low complexity customers, a typical month looks like: one cadence call (or async update if nothing to discuss), a quick case review in week two, some ISC work in week three, and then you skip week four unless something comes up. Total time: roughly 2 to 3 hours per month.

For medium complexity customers: a cadence call in week one, a case review and proactive outreach in week two, ISC progress work in week three, and prep for next month in week four. Total time: roughly 3.5 to 4 hours per month.

For high complexity customers: a cadence call in week one, a mid-month check-in or deep dive in week two, active ISC work in week three, and review plus proactive outreach in week four. Total time: roughly 5 to 6 hours per month.

---

## 3. Efficiency Mechanisms

### 3.1 One-to-Many Workshops

This is the single most important scaling tool in the framework. Instead of explaining the same thing to each customer one by one, you run a workshop that multiple customers attend together.

This applies to ALL complexity segments. High complexity customers benefit just as much as low complexity ones. The difference is not who attends, but whether you also do a follow-up session for customer-specific questions.

Workshop topics come from patterns you see across your portfolio. If three customers are all running containers and a major EKS version is going end-of-life, that is a workshop. If multiple customers have weak security posture, that is a workshop. Common examples:

- Cost optimization best practices (quarterly)
- Security posture review (twice a year)
- Container upgrade readiness (as needed before EOL dates)
- Well-Architected overview (annually, especially for newer customers)
- Disaster recovery planning (twice a year)

These workshops are not limited to your own customers. TAMs can lead virtual events and hands-on workshops that are advertised across the wider team or area. If a TAM has deep expertise in a topic, they can deliver it for customers outside their own portfolio. This creates value at scale and also counts toward professional development goals.

**How to run one:** Identify a common theme from your weekly reviews. Schedule a 45 to 60 minute session and invite all relevant customers. Record it for anyone who cannot attend. Follow up individually only if a customer has questions specific to their environment.

### 3.2 Self-Service Enablement

The goal of self-service is to reduce the number of reactive questions that land on your desk. If a customer can answer "is there an outage?" or "why did my bill go up?" without calling you, that frees your time for strategic work.

Key self-service tools to enable for every customer:

**AWS Trusted Advisor** gives customers automated checks for cost, security, and performance. Set it up during onboarding and walk them through it in the first cadence call.

**AWS Health Dashboard** shows customers their own service health events. This reduces "is something broken?" questions dramatically.

**Well-Architected Agent** lets customers run architecture reviews on their own. It does not replace a TAM-led review, but it handles the initial assessment.

**DevOps Agent** helps customers troubleshoot operational issues independently. It reduces case volume for common problems and speeds up incident response.

**FinOps Agent** gives customers visibility into their cost patterns and optimization opportunities. It helps them self-serve on cost questions between your cadence calls.

**AWS Cost Explorer and Budgets** let customers monitor their own spend and set alerts. Set up budget alerts during onboarding so they do not need to ask you when costs spike.

The approach is inspired by the "Day in the Life" narrative: imagine what a customer's typical day looks like, and then identify every point where they currently wait for TAM help that could instead be handled through self-service tooling or AI-assisted agents.

Target: reduce reactive case volume by 30 percent through self-service enablement. That time goes back into strategic ISC work.

### 3.3 Automation and Standard Operating Procedures

Repetitive TAM tasks eat hours every week. Automation through standard operating procedures (SOPs) gives you that time back.

The key areas where SOPs help:

**Morning preparation.** Instead of manually checking emails, cases, and health events across all customers, an automated daily kickoff process gathers everything in one place. This turns a 30 to 45 minute task into 10 to 15 minutes.

**Customer prioritization.** When you have 8 to 12 customers, deciding who needs attention today is a task in itself. A daily focus recommender process scans all customers and tells you where to spend your time based on urgency signals.

**Cadence call preparation.** Before each cadence call, you need case data, health events, and ISC status for that customer. A call prep SOP pulls this together automatically in 5 minutes instead of 20 to 25 minutes of manual gathering.

**Customer onboarding.** New customers require a setup checklist, research, and profile creation. An onboarding SOP turns a 4-hour manual process into a 1 to 2 hour guided workflow.

**Weekly review.** Summarizing the week across all customers and planning the next week takes time. A weekly review SOP automates the data collection and surfaces the key patterns.

Total time saved with consistent SOP usage: roughly 5 to 7 hours per week. That time goes back into strategic customer work or ISC delivery.

### 3.4 Template Utilization

Standardized templates reduce the time you spend on recurring deliverables. Every SSP uses the Blueprint format on SharePoint. Every SBR uses the standard deck template. Customer profiles, meeting notes, and proactive notifications all follow a consistent format.

The benefit is not just speed. Templates also ensure consistency. When any TAM picks up a customer from another TAM, they find familiar formats and know where to look for information.

---

## 4. Success Metrics

### 4.1 Framework Effectiveness

These metrics tell you whether the framework itself is working. Can you manage more customers without quality dropping?

Track: customers managed per TAM, SSP completion rate (target: 100 percent of customers have a live SSP), SBR delivery rate (target: on schedule per segment), morning prep time (target: under 15 minutes), proactive vs reactive ratio (target: 50/50), and framework adherence (cadences running on schedule, target: 90 percent).

### 4.2 Customer Outcomes

These metrics tell you whether your engagement is actually delivering value.

Track: Customer Health Index scores (target: all above 50), case volume trends (target: 20 percent reduction through self-service), customer satisfaction (qualitative, from post-SBR feedback), ISC completion rate (target: 60 percent on track), time-to-first-value for new customers (target: under 4 weeks from onboarding to first delivered ISC), and contract renewal rate (target: maintain 100 percent).

### 4.3 Efficiency

These metrics tell you whether the scaling mechanisms are actually saving time.

Track: hours saved by SOPs per week (target: 5 to 7 hours), one-to-many workshops delivered (target: 2 to 3 per quarter), self-service tool adoption (target: all customers using at least 2 tools), and template reuse rate (target: over 80 percent of deliverables use templates).

### 4.4 Quarterly Review Questions

At the end of each quarter, ask yourself:

1. Am I managing more customers without quality going down?
2. Are SSPs being delivered and ISCs progressing?
3. Are SOPs and automation actually saving time in practice?
4. Are health scores stable or improving?
5. Am I working sustainable hours?

If the answer to any of these is "no", adjust the framework. This is a living document, not a fixed process.

---

## 5. Risks and Mitigations

**Too many customers too fast.** If customers are added before automation is stable, quality will drop and customers will notice. Mitigation: escalate to your manager if portfolio grows beyond what the framework can support before the efficiency mechanisms are in place.

**Self-service does not reduce cases.** If customers are not adopting the tools, you do not get the time savings you need. Mitigation: track where cases are coming from. If a question could have been answered by Trusted Advisor or Health Dashboard, that is a sign you need another demo or enablement session.

**One-to-many workshops get low attendance.** If nobody shows up, you wasted the prep time. Mitigation: always record sessions and share the recording. Make attendance optional but advertise the value clearly. Track which topics get interest and adjust.

**Segmentation makes customers feel like second class.** If a customer finds out they are "low complexity", they might think they are getting less attention. Mitigation: never expose segments externally. Every customer gets quality engagement. The framework just adjusts depth and frequency, not quality.

**High complexity customer consumes all bandwidth.** One demanding customer can push everything else aside. Mitigation: time-box high complexity at 15 percent maximum. If a customer consistently needs more, escalate for additional support or resourcing.

**ISCs disconnected from customer priorities.** If you build ISCs from data alone without customer input, they might not care about the plan. Mitigation: always validate candidate ISCs with the customer during a cadence call before finalizing the SSP.

---

## Appendix A: Annual Calendar View

**January.** Create or renew SSPs for all customers. Reassess complexity segments based on how the previous year went. Set up any new automation for the year.

**February.** Run monthly cadences. Identify topics for upcoming one-to-many workshops based on common patterns.

**March.** Monthly cadences. Prepare Q1 SBR for high complexity customers. Deliver first workshop of the year.

**April.** Deliver Q1 SBR for high complexity customers. Begin H1 SBR preparation for medium and low complexity customers. Review self-service adoption across portfolio.

**May.** Monthly cadences. Deliver H1 SBR for medium and low complexity customers.

**June.** Monthly cadences. Mid-year SSP review across all customers. Deliver second workshop.

**July.** Monthly cadences. Prepare Q2 SBR for high complexity customers. Review framework effectiveness and adjust segments if needed.

**August.** Deliver Q2 SBR for high complexity customers. Adjust engagement approach based on first-half learnings.

**September.** Monthly cadences. Prepare Q3 SBR for high complexity customers. Deliver third workshop.

**October.** Deliver Q3 SBR for high complexity customers. Begin H2 SBR preparation for medium and low complexity. Start annual planning conversations. Reassess complexity segments.

**November.** Deliver H2 SBR for medium and low complexity customers. Run annual planning sessions with each customer for next year's SSP priorities.

**December.** Year-end wrap-up. Close out current SSPs. Deliver Q4 SBR for high complexity customers. Document learnings for next year.

---

*This framework is a living document. Review it quarterly using the success metrics in Section 4. Adjust segments, engagement rhythms, and efficiency mechanisms based on what is actually working in practice.*
