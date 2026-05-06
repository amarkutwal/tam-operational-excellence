# Speaker Notes: Troubleshooting with DevOps Agent
## What to SAY for each slide

---

## Slide 1: Title

> "Hi everyone, I'm Amar, TAM in the Benelux team. Today I'm going to show you how DevOps Agent can help us troubleshoot one of the most common issues we see with containerized applications — services that can't connect to their database.
>
> This is a 300-level session with a live demo, so by the end you'll see exactly how the agent investigates and resolves this in real-time. Let's dive in."

---

## Slide 2: Why This Matters for TAMs

> "Let me paint a picture. Your customer calls you — their product catalog isn't loading. They think it's a database issue. Sound familiar?
>
> Without DevOps Agent, what do we do? We SSH into instances, manually check security groups, dig through CloudWatch logs, cross-reference VPC configurations. That's 30 to 60 minutes of manual investigation — and that's if you know exactly where to look.
>
> With DevOps Agent, you ask one question in plain English: 'Why can't the catalog connect to the database?' And it does all that investigation for you in about 2 minutes.
>
> As TAMs, this is a game-changer. You can troubleshoot live during a cadence call, or guide your customer to use it themselves. Either way, you're delivering faster resolution and demonstrating real value."

---

## Slide 3: What is DevOps Agent?

> "So what actually is DevOps Agent? It's an AI-powered troubleshooting assistant that understands AWS infrastructure — ECS, EKS, Lambda, RDS, and more.
>
> You talk to it in natural language. You say things like 'Why is my service slow?' or 'Check the health of my EKS pods.' And it goes and investigates — checking pod status, reading logs, analyzing security groups, looking at network configurations.
>
> The key thing is: it correlates across services. It doesn't just look at Kubernetes — it connects what's happening in your pods to what's configured in your VPC security groups. That cross-service correlation is what makes it powerful.
>
> Important note: it's read-only. It investigates and recommends, but it won't make changes to your infrastructure without your approval. So it's safe to run in production."

---

## Slide 4: Architecture Overview

> "Here's the application we'll be working with today. It's a retail store app running on EKS — pretty typical microservices architecture.
>
> We have a UI frontend, a catalog service that serves product data, and an RDS PostgreSQL database that stores the products.
>
> The catalog service needs to talk to RDS. And between them sits a security group — that's the network firewall that controls who can connect to the database.
>
> In our scenario, someone — maybe during a change window, maybe accidentally — modifies that security group and blocks the connection. The catalog can no longer reach the database. Products stop loading. Customer panics."

---

## Slide 5: The Problem — What the Customer Sees

> "Here's what makes this tricky. When you look at Kubernetes, everything looks fine. Pods are running — no crashes, no OOMKills, no CrashLoopBackOff. The application is technically 'up.'
>
> But when you check the logs, you see connection timeouts to the RDS endpoint. The catalog service is trying to connect but getting no response.
>
> This is misleading because most people look at pod status first. They see 'Running' and think Kubernetes is fine. And it IS fine — the problem isn't in Kubernetes at all. It's at the AWS networking layer — a security group rule is blocking traffic.
>
> This is exactly the kind of issue where DevOps Agent shines, because it doesn't just look at one layer. It investigates across the full stack."

---

## Slide 6: LIVE DEMO — Injecting the Fault

> "Alright, let's see this in action. I'm going to show you the healthy application first — you can see the product catalog loads fine, products are displayed.
>
> Now I'm going to inject the fault. This script modifies the RDS security group to block inbound traffic from the EKS nodes. This simulates someone accidentally removing a security group rule.
>
> [Run eks-lab3-start]
>
> Let me refresh the app... and there it is. The catalog is broken. No products loading. But if I check kubectl — pods are still running. No restarts. This is exactly what your customer would see and report to you."

---

## Slide 7: LIVE DEMO — DevOps Agent Investigation

> "Now let's ask DevOps Agent to figure out what's wrong. I'm going to type a simple question: 'Why can't the catalog service connect to the database?'
>
> [Type the prompt and let it run]
>
> Watch what it's doing — I'll narrate as it goes:
>
> First, it checks pod status. Pods are running — okay, not a Kubernetes scheduling issue.
>
> Next, it looks at the pod logs. It finds connection timeout errors to the RDS endpoint. Now it knows the problem is between the catalog and the database.
>
> Then it identifies the RDS instance from the pod's configuration. It looks up the security group attached to that RDS instance.
>
> And here's the key finding — it sees that the security group does NOT have an inbound rule allowing traffic from the EKS nodes on port 5432. That's our root cause.
>
> It even suggests the fix: add an inbound rule allowing TCP port 5432 from the EKS node security group.
>
> That whole investigation took about 2 minutes. Manually, this would have taken me 30 minutes of clicking through the console, checking security groups, cross-referencing CIDR blocks."

---

## Slide 8: LIVE DEMO — Applying the Fix

> "Let me apply the fix now.
>
> [Run eks-lab3-fix]
>
> This restores the security group rule. Let me refresh the application... and we're back. Products are loading again. Issue resolved.
>
> From fault injection to resolution — about 5 minutes total. And most of that was me talking. The agent's investigation itself was under 2 minutes."

---

## Slide 9: What the Agent Found — Summary

> "Let me summarize what the agent did. It followed a logical investigation path:
>
> Pod status — running, no issue there.
> Pod logs — connection timeout, so the problem is network-related.
> RDS endpoint — identified from the service config.
> Security group — found the missing inbound rule.
> Root cause — security group blocking EKS to RDS connectivity.
> Suggested fix — add the inbound rule for port 5432.
>
> The reason this is hard to find manually is that the symptom is in Kubernetes, but the root cause is in AWS networking. You need to cross two different domains. DevOps Agent does that automatically."

---

## Slide 10: ECS Comparison (Optional)

> "Quick bonus — the workshop also has a similar scenario for ECS. Same problem — catalog can't reach the database — but the root cause is different. In ECS, it's a service discovery misconfiguration rather than a security group issue.
>
> The interesting thing is that DevOps Agent adapts its investigation based on the platform. Same question, different investigation path, correct root cause in both cases.
>
> I won't demo this today, but it's available in the workshop if you want to try it yourself."

---

## Slide 11: How TAMs Can Use This

> "So how do we use this as TAMs? Three ways:
>
> First — during customer calls. Customer reports an issue, you fire up DevOps Agent right there on the call. You troubleshoot in real-time and resolve it in minutes. That's a wow moment for the customer.
>
> Second — proactive engagement. Run periodic health checks on your customer's clusters. Find misconfigurations before they cause outages. That's the kind of proactive value that justifies Enterprise Support.
>
> Third — customer enablement. Show your customers how to use DevOps Agent themselves. This reduces case volume for common issues and empowers their teams. You can even run a guided workshop as part of your SSP delivery.
>
> And for those of you interested in the DevOps Agent Ambassador program — this is exactly the kind of thing that drives customer enrollment."

---

## Slide 12: Getting Started

> "If you want to try this yourself, here's how:
>
> DevOps Agent is available through Agent Spaces — same place where UNO runs. The workshop I demoed today is publicly available — I'll share the link.
>
> I'd recommend starting with Module 2, EKS Troubleshooting, Scenario 3 — that's exactly what I showed today. It takes about 15 minutes to run through.
>
> There are also scenarios for Lambda, ECS, and AI/ML services if you want to explore further."

---

## Slide 13: Q&A

> "That's my demo. Happy to take questions.
>
> [If no questions, prompt with:]
> A question I often get is: 'Is it safe to run in production?' The answer is yes — DevOps Agent is read-only. It investigates by reading logs, metrics, and configurations. It doesn't make changes unless you explicitly approve them.
>
> Another common one: 'Does it work with customer accounts?' Yes, as long as you have the appropriate access. You can run it through Agent Spaces with your customer's account context.
>
> Thanks everyone!"

---

## Timing Guide

| Section | Duration | Cumulative |
|---------|----------|-----------|
| Slides 1-5 (Context) | 11 min | 11 min |
| Slides 6-8 (Live Demo) | 14 min | 25 min |
| Slides 9-12 (Wrap-up) | 10 min | 35 min |
| Slide 13 (Q&A) | 5 min | 40 min |

**Total: ~40 minutes**

---

## Tips for Delivery

1. **Practice the demo 3 times** before presenting. Know exactly what the agent will output.
2. **Have a backup recording** in case the live environment has issues.
3. **Narrate while the agent runs** — don't just sit in silence. Explain what it's checking.
4. **Make it relatable** — use phrases like "You've all had this call from a customer..."
5. **Keep energy up during the demo** — live demos can feel slow. Fill the gaps with context.
6. **End with a call to action** — "Try Scenario 3 this week and let me know how it goes."
