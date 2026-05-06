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

### Slide 2: Why This Matters for TAMs (3 min)

**The scenario:**
> Your customer calls: "Our application is down. The product catalog isn't loading. We think it's a database issue."

**Without DevOps Agent:**
- SSH into instances, check security groups manually
- Review CloudWatch logs across multiple services
- Cross-reference VPC configs, NACLs, route tables
- Time to resolution: 30-60 minutes of manual investigation

**With DevOps Agent:**
- Ask: "Why can't the catalog connect to the database?"
- Agent investigates automatically: pods, logs, security groups, network configs
- Time to resolution: 2-5 minutes

**TAM value:** You can guide customers to faster resolution, or even troubleshoot during a cadence call in real-time.

---

### Slide 3: What is DevOps Agent? (3 min)

- AI-powered troubleshooting assistant for AWS infrastructure
- Understands ECS, EKS, Lambda, RDS, and more
- Investigates by analyzing: pod status, logs, metrics, security groups, network policies
- Available via Agent Spaces or Cloud IDE
- Not a replacement for TAM expertise — it's a force multiplier

**Key capabilities:**
- Natural language queries ("Why is my service slow?")
- Cross-service correlation (connects pod failures to security group rules)
- Root cause identification with evidence
- Suggested remediation steps

---

### Slide 4: Architecture Overview (2 min)

**The retail store application (workshop environment):**

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
- Security group controls network access between EKS pods and RDS

---

### Slide 5: The Problem — What the Customer Sees (2 min)

**Symptoms:**
- Product catalog page returns errors or timeouts
- Application partially works (UI loads, but no products displayed)
- Other services (cart, checkout) may still work

**What kubectl shows:**
```bash
kubectl get pods -n catalog
# Pods are RUNNING (not crashed) — so it's not an application code issue

kubectl logs -n catalog deployment/catalog
# Connection timeout to RDS endpoint
# "could not connect to server: Connection timed out"
```

**The misleading part:** Pods are running, no OOMKill, no CrashLoop — so where's the problem?

---

### Slide 6: LIVE DEMO — Injecting the Fault (2 min)

**[LIVE DEMO STARTS]**

```bash
# Show the healthy application first
get-eks-url
# Open in browser — catalog loads fine

# Now inject the fault
eks-lab3-start
# This runs inject-rds-sg-block.sh
# Modifies the security group to block EKS → RDS traffic
```

**Show the broken state:**
- Refresh the app — catalog fails to load products
- Show kubectl: pods are running but catalog can't reach DB

---

### Slide 7: LIVE DEMO — DevOps Agent Investigation (10 min)

**Ask DevOps Agent:**
```
Why can't the catalog service connect to the database?
```

**What the agent does (narrate as it runs):**
1. ✅ Checks pod status — pods are running, no restarts
2. ✅ Checks pod logs — finds connection timeout errors to RDS
3. ✅ Identifies the RDS endpoint from pod environment/config
4. ✅ Checks security group rules on the RDS instance
5. ✅ **Finds the root cause:** Security group inbound rule doesn't allow traffic from EKS pod CIDR/security group
6. ✅ Suggests fix: Add inbound rule allowing port 5432 from EKS node security group

**Key talking point:**
> "Notice how the agent correlated the pod logs (connection timeout) with the security group configuration (missing inbound rule). This cross-service correlation is what takes humans 30+ minutes to do manually."

---

### Slide 8: LIVE DEMO — Applying the Fix (2 min)

```bash
# Fix the issue
eks-lab3-fix
# This runs rollback-rds-sg-block.sh
# Restores the security group rule
```

**Show recovery:**
- Refresh the app — catalog loads again
- Show kubectl logs — connections succeeding

---

### Slide 9: What the Agent Found — Summary (3 min)

| Investigation Step | Finding |
|---|---|
| Pod Status | Running (no crashes) |
| Pod Logs | `Connection timed out` to RDS endpoint |
| RDS Endpoint | Identified from service configuration |
| Security Group | **Missing inbound rule** for port 5432 from EKS |
| Root Cause | Security group blocking EKS → RDS connectivity |
| Fix | Add inbound rule: TCP 5432 from EKS node SG |

**Why this is hard to find manually:**
- Pods are running — no obvious Kubernetes issue
- The problem is at the AWS networking layer, not the application layer
- You need to cross-reference K8s configs with VPC security groups
- DevOps Agent does this automatically

---

### Slide 10: ECS Comparison (Optional — 2 min)

**Same problem, different platform:**

| | EKS (Scenario 3) | ECS (Scenario 4) |
|---|---|---|
| Root cause | Security group blocking access | Service discovery misconfiguration |
| Symptom | Connection timeout | Connection refused / DNS failure |
| Agent approach | Checks SG rules | Checks Cloud Map / service discovery |
| Fix | Add SG inbound rule | Fix service discovery configuration |

**Takeaway:** DevOps Agent adapts its investigation based on the platform. Same question, different investigation path.

---

### Slide 11: How TAMs Can Use This (3 min)

**During customer calls:**
- Customer reports connectivity issues → run DevOps Agent live
- Demonstrate value by resolving in minutes, not hours

**Proactive engagement:**
- Run periodic health checks on customer EKS clusters
- Identify security group misconfigurations before they cause outages

**Customer enablement:**
- Show customers how to use DevOps Agent themselves
- Reduces case volume for common troubleshooting scenarios

**Workshop enrollment:**
- Point customers to the DevOps Agent Workshop
- Offer to run a guided session as part of SSP delivery

---

### Slide 12: Getting Started (2 min)

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

### Slide 13: Q&A (5 min)

**Anticipated questions:**
- "Does this work with customer accounts?" → Yes, with proper access
- "What about non-EKS workloads?" → Also supports ECS, Lambda, AI/ML
- "Is it safe to run in production?" → Read-only investigation, no changes without approval
- "How do I become a DevOps Agent Ambassador?" → Talk to me after!

---

## Demo Prep Checklist

- [ ] Workshop environment provisioned (Cloud IDE access)
- [ ] EKS cluster running with retail store app
- [ ] Verify `eks-lab3-start` and `eks-lab3-fix` scripts work
- [ ] Test DevOps Agent prompt: "Why can't the catalog connect to the database?"
- [ ] Backup plan: screenshots/recording in case live demo fails
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

## Backup Plan (If Live Demo Fails)

Record a screen capture of the demo beforehand. If the live environment has issues:
1. Switch to the recording
2. Narrate over it
3. Offer to do a live follow-up session for anyone interested

---

## Timeline to Deliver

| Week | Task |
|------|------|
| Week 1 (May 5-9) | Provision workshop environment, test all scripts |
| Week 2 (May 12-16) | Build slides, practice demo 2-3 times |
| May 14-16 | Deliver presentation |

---

*Workshop source: https://catalog.us-east-1.prod.workshops.aws/workshops/767d3081-b4fa-4e08-81da-17e5c94a1a08/en-US*
