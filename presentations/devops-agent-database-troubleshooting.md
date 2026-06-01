# Presentation #1: Troubleshooting with DevOps Agent
## "Services Won't Connect to the Database"

**Presenter:** Amar Kutwal (akkutwal)
**Level:** 300
**Duration:** 30-40 minutes (including live demo)
**Audience:** Generalist TAMs
**Deadline:** Mid-May 2026
**Status:** Draft

---

## Presentation Outline

### Slide 1: Title (1 min)
**"Troubleshooting with DevOps Agent: Services Won't Connect to the Database"**

- Amar Kutwal, TAM — Benelux
- 300-level | Live Demo Included

---

### Slide 2: What I Will Cover (1 min)

**Today's roadmap:**

1. Why this matters for TAMs
2. What DevOps Agent is (quick intro)
3. The setup — a retail app on EKS
4. **Live demo** — break it, investigate it, fix it
5. How you can use this with your customers
6. How to get started yourself

**By the end:** You'll see a real troubleshooting scenario solved in under 5 minutes.

---

### Slide 3: Why This Matters for TAMs (3 min)

**The scenario:**
> Your customer calls: "Our app is down. The product catalog won't load. We think it's a database issue."

**Without DevOps Agent:**
- SSH into instances, check security groups by hand
- Look through CloudWatch logs across many services
- Compare VPC configs, NACLs, route tables
- Time to fix: 30-60 minutes of manual work

**With DevOps Agent:**
- Ask: "Why can't the catalog connect to the database?"
- The agent checks pods, logs, security groups, network configs — automatically
- Time to fix: 2-5 minutes

**TAM value:** You help customers fix things faster. You can even troubleshoot live during a cadence call.

---

### Slide 4: What is DevOps Agent? (3 min)

- AI-powered troubleshooting tool for AWS infrastructure
- Understands ECS, EKS, Lambda, RDS, and more
- Checks: pod status, logs, metrics, security groups, network policies
- Available via Agent Spaces or Cloud IDE
- Not a replacement for TAM skills — it's a force multiplier

**What it can do:**
- Answer plain-English questions ("Why is my service slow?")
- Connect findings across services (links pod failures to security group rules)
- Find the root cause with evidence
- Suggest a fix

---

### Slide 5: Architecture Overview (2 min)

**The retail store app (workshop environment):**

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│     UI      │────▶│   Catalog   │────▶│   RDS       │
│  (Frontend) │     │  (Service)  │     │ (PostgreSQL)│
└─────────────┘     └─────────────┘     └─────────────┘
                           │
                    ┌──────┴──────┐
                    │  Security   │
                    │   Group     │  ◀── THIS IS WHERE THE PROBLEM IS
                    └─────────────┘
```

- EKS cluster running a microservices retail app
- Catalog service needs to connect to RDS PostgreSQL
- A security group controls network access between EKS pods and RDS

---

### Slide 6: The Problem — What the Customer Sees (2 min)

**Symptoms:**
- Product catalog page shows errors or timeouts
- App partly works (UI loads, but no products show up)
- Other services (cart, checkout) may still work fine

**What kubectl shows:**
```bash
kubectl get pods -n catalog
# Pods are RUNNING (not crashed) — so it's not a code problem

kubectl logs -n catalog deployment/catalog
# Connection timeout to RDS endpoint
# "could not connect to server: Connection timed out"
```

**The tricky part:** Pods are running. No OOMKill. No CrashLoop. So where's the problem?

---

### Slide 7: LIVE DEMO — Injecting the Fault (2 min)

**[LIVE DEMO STARTS]**

```bash
# Show the healthy app first
get-eks-url
# Open in browser — catalog loads fine

# Now break it
eks-lab3-start
# This runs inject-rds-sg-block.sh
# It changes the security group to block EKS → RDS traffic
```

**Show the broken state:**
- Refresh the app — catalog fails to load products
- Show kubectl: pods are running, but catalog can't reach the DB

---

### Slide 8: LIVE DEMO — DevOps Agent Investigation (10 min)

**Ask DevOps Agent:**
```
Why can't the catalog service connect to the database?
```

**What the agent does (talk through it as it runs):**
1. ✅ Checks pod status — pods are running, no restarts
2. ✅ Checks pod logs — finds connection timeout errors to RDS
3. ✅ Finds the RDS endpoint from pod config
4. ✅ Checks security group rules on the RDS instance
5. ✅ **Finds the root cause:** Security group doesn't allow traffic from EKS on port 5432
6. ✅ Suggests fix: Add inbound rule allowing port 5432 from EKS node security group

**Key talking point:**
> "See how the agent connected the pod logs (connection timeout) with the security group config (missing rule). This is what takes humans 30+ minutes to do by hand."

---

### Slide 9: LIVE DEMO — Applying the Fix (2 min)

```bash
# Fix the issue
eks-lab3-fix
# This runs rollback-rds-sg-block.sh
# Restores the security group rule
```

**Show recovery:**
- Refresh the app — catalog loads again
- Show kubectl logs — connections working

---

### Slide 10: What the Agent Found — Summary (3 min)

| Investigation Step | Finding |
|---|---|
| Pod Status | Running (no crashes) |
| Pod Logs | `Connection timed out` to RDS endpoint |
| RDS Endpoint | Found from service config |
| Security Group | **Missing inbound rule** for port 5432 from EKS |
| Root Cause | Security group blocking EKS → RDS traffic |
| Fix | Add inbound rule: TCP 5432 from EKS node SG |

**Why this is hard to find by hand:**
- Pods are running — no obvious Kubernetes problem
- The real issue is at the AWS networking layer, not the app layer
- You need to compare K8s configs with VPC security groups
- DevOps Agent does this automatically

---

### Slide 11: ECS Comparison (Optional — 2 min) ⏩ *Can shorten or skip if running late*

**Same problem, different platform:**

| | EKS (Scenario 3) | ECS (Scenario 4) |
|---|---|---|
| Root cause | Security group blocking access | Service discovery misconfiguration |
| Symptom | Connection timeout | Connection refused / DNS failure |
| Agent approach | Checks SG rules | Checks Cloud Map / service discovery |
| Fix | Add SG inbound rule | Fix service discovery config |

**Takeaway:** DevOps Agent adapts its investigation based on the platform. Same question, different path.

---

### Slide 12: How TAMs Can Use This (3 min) ⏩ *Can shorten to 1.5 min if running late*

**During customer calls:**
- Customer reports connection issues → run DevOps Agent live
- Fix it in minutes, not hours. That's a wow moment.

**Proactive work:**
- Run health checks on customer EKS clusters regularly
- Find security group problems before they cause outages

**Customer enablement:**
- Show customers how to use DevOps Agent themselves
- Fewer support cases for common issues
- Run a guided workshop as part of your SSP delivery

**Workshop enrollment:**
- Point customers to the DevOps Agent Workshop
- Offer to run a guided session with them

---

### Slide 13: Getting Started (2 min)

**For TAMs who want to try this:**
1. Access DevOps Agent via Agent Spaces: [agentspaces.amazon.dev](https://agentspaces.amazon.dev)
2. Workshop link: [DevOps Agent Workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/767d3081-b4fa-4e08-81da-17e5c94a1a08/en-US)
3. Module 2 → EKS Troubleshooting → Scenario 3

**Available scenarios to practice:**
| Scenario | Issue | Difficulty |
|---|---|---|
| Catalog won't start | High CPU | Intermediate |
| Cart keeps crashing | Memory leak | Advanced |
| **Can't connect to DB** | **Security group** | **Intermediate** |
| Cart operations slow | DynamoDB throttling | Advanced |
| Website unreachable | Network policy | Intermediate |

---

### Slide 14: One Thing to Remember

**If you take away one thing from this talk:**

> DevOps Agent connects the dots across services — that's the hard part of troubleshooting. The agent does it in 2 minutes. Use it during customer calls to show real value, fast.

**Try Scenario 3 this week.** It takes 15 minutes. Then you'll be ready to demo it for your customers.

---

### Slide 15: Q&A (5 min) ⏩ *Can shorten to 2 min if running late*

**Common questions:**
- "Does this work with customer accounts?" → Yes, with proper access
- "What about non-EKS workloads?" → Also supports ECS, Lambda, AI/ML
- "Is it safe in production?" → Read-only investigation. No changes without approval.
- "How do I become a DevOps Agent Ambassador?" → Talk to me after!

---

## Backup Plan (If Live Demo Fails)

⚠️ **This is important — always have a backup.**

Record a screen capture of the demo beforehand. If the live environment has issues:
1. Switch to the recording immediately — don't waste time debugging
2. Narrate over it as if it were live
3. Offer a live follow-up session for anyone interested

**Signals to switch to backup:**
- Workshop environment not loading after 30 seconds
- Agent not responding after 1 minute
- Any unexpected error during fault injection

---

## Demo Prep Checklist

- [ ] Workshop environment set up (Cloud IDE access)
- [ ] EKS cluster running with retail store app
- [ ] Verify `eks-lab3-start` and `eks-lab3-fix` scripts work
- [ ] Test DevOps Agent prompt: "Why can't the catalog connect to the database?"
- [ ] Backup plan: screenshots/recording ready
- [ ] Practice run: time the full demo (should be ~15 min)

## Pre-Presentation Setup

```bash
# Before the presentation, verify everything works:
get-eks-url          # Confirm app is accessible
kubectl get pods -A  # Confirm all pods running
eks-lab3-start       # Inject fault
# ... run DevOps Agent ...
eks-lab3-fix         # Restore
```

---

## Timeline to Deliver

| Week | Task |
|------|------|
| Week 1 (May 5-9) | Set up workshop environment, test all scripts |
| Week 2 (May 12-16) | Build slides, practice demo 2-3 times |
| May 14-16 | Deliver presentation |

---

*Workshop source: https://catalog.us-east-1.prod.workshops.aws/workshops/767d3081-b4fa-4e08-81da-17e5c94a1a08/en-US*
