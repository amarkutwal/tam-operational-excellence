# Speaker Notes: Troubleshooting with DevOps Agent
## What to SAY for each slide

---

## Slide 1: Title

> "Hi everyone, I'm Amar — TAM in the Benelux team.
>
> Today I'm showing you how DevOps Agent solves one of the most common container problems — services that can't connect to their database.
>
> This is a 300-level session with a live demo. By the end, you'll see exactly how the agent finds and fixes this. [pause] Let's go."

---

## Slide 2: What I Will Cover

> "Quick overview of what's coming. [pause]
>
> First — why this matters for us as TAMs.
> Then — a quick intro to DevOps Agent.
> Then — the main part — a live demo where I break something, investigate it, and fix it.
> And finally — how you can start using this with your customers.
>
> The whole thing is about 35 minutes. [pause] Let's start."

---

## Slide 3: Why This Matters for TAMs

> "So — let me set the scene. [pause]
>
> Your customer calls. Product catalog won't load. They think it's the database. Sound familiar?
>
> Without DevOps Agent — what do we do?
> - SSH into instances
> - Check security groups by hand
> - Dig through CloudWatch logs
> - Compare VPC configs
>
> That's 30 to 60 minutes of work. And that's if you know where to look. [pause]
>
> Now — with DevOps Agent? You ask one question: 'Why can't the catalog connect to the database?' And it does everything for you. About 2 minutes. [pause]
>
> For us as TAMs — this is huge. You can troubleshoot live on a cadence call. Or you can teach your customer to do it themselves. Either way — faster fix, clear value."

---

## Slide 4: What is DevOps Agent?

> "So what is it? [pause]
>
> It's an AI troubleshooting tool. It understands AWS — ECS, EKS, Lambda, RDS, all of it.
>
> You talk to it in plain English. You say 'Why is my service slow?' or 'Check my EKS pods.' And it goes and looks — checks pod status, reads logs, looks at security groups, checks network configs.
>
> The key thing here is — [pause] — it connects findings across services. It doesn't just look at Kubernetes. It links what's happening in your pods to what's set up in your security groups. That's the power.
>
> And one important thing: it's read-only. It looks. It recommends. It does NOT make changes without your approval. Safe in production."

---

## Slide 5: Architecture Overview

> "Here's what we're working with today. [pause] A retail store app on EKS. Pretty standard microservices setup.
>
> We have:
> - A UI frontend
> - A catalog service that serves product data
> - An RDS PostgreSQL database that stores the products
>
> The catalog needs to talk to RDS. Between them sits a security group — that's the network firewall. It controls who can connect.
>
> In our scenario — someone changes that security group. Maybe during a change window. Maybe by accident. [pause] The catalog can't reach the database anymore. Products stop loading. Customer panics."

---

## Slide 6: The Problem — What the Customer Sees

> "Here's what makes this tricky. [pause]
>
> You look at Kubernetes — everything looks fine. Pods are running. No crashes. No OOMKills. No CrashLoops. The app is technically 'up.'
>
> But check the logs — connection timeouts to the RDS endpoint. The catalog is trying to connect. No response. [pause]
>
> This is misleading. Most people check pod status first. They see 'Running' and think — okay, Kubernetes is fine. And it IS fine. The problem isn't in Kubernetes at all. It's at the AWS networking layer. A security group rule is blocking traffic.
>
> This is exactly where DevOps Agent shines. It doesn't just look at one layer. It checks the full stack."

---

## Slide 7: LIVE DEMO — Injecting the Fault

> "Alright — let's see it for real. [pause]
>
> First — the healthy app. You can see the product catalog loads fine. Products are there.
>
> Now I'm going to break it. This script changes the RDS security group. It blocks traffic from EKS. Like someone accidentally removing a rule. [pause]
>
> [Run eks-lab3-start]
>
> Let me refresh... [pause] ...and there it is. Catalog is broken. No products. But check kubectl — pods are still running. No restarts. This is exactly what your customer would tell you."

---

## Slide 8: LIVE DEMO — DevOps Agent Investigation

> "Now — the good part. Let's ask DevOps Agent what's wrong. [pause]
>
> I type one question: 'Why can't the catalog service connect to the database?'
>
> [Type the prompt and let it run]
>
> Watch what it does — I'll talk through it:
>
> First — checks pod status. Running. Okay, not a scheduling problem.
>
> Next — reads the pod logs. Finds connection timeouts to RDS. Now it knows — the problem is between catalog and the database. [pause]
>
> Then — it finds the RDS instance from the pod config. Looks up the security group on that RDS instance.
>
> And here's the key finding — [pause] — the security group does NOT allow traffic from EKS on port 5432. That's our root cause. Right there.
>
> It even tells you the fix: add an inbound rule. TCP port 5432. From the EKS node security group. [pause]
>
> That took about 2 minutes. By hand? That's 30 minutes of clicking through the console. Checking security groups. Comparing CIDR blocks. The agent just did it all."

---

## Slide 9: LIVE DEMO — Applying the Fix

> "Let me fix it now.
>
> [Run eks-lab3-fix]
>
> This puts the security group rule back. Let me refresh... [pause] ...and we're back. Products loading again. Done.
>
> From breaking it to fixing it — about 5 minutes total. Most of that was me talking. The agent itself? Under 2 minutes."

---

## Slide 10: What the Agent Found — Summary

> "Let me walk through what the agent did. Step by step: [pause]
>
> - Pod status — running. No issue there.
> - Pod logs — connection timeout. So it's a network problem.
> - RDS endpoint — found it from the service config.
> - Security group — found the missing inbound rule.
> - Root cause — security group blocking EKS to RDS.
> - Fix — add the rule for port 5432.
>
> [pause]
>
> The reason this is hard by hand: the symptom is in Kubernetes, but the root cause is in AWS networking. You need to cross two different worlds. DevOps Agent does that automatically."

---

## Slide 11: ECS Comparison (Optional)

> "Quick bonus — [pause] the workshop also has a similar scenario for ECS. Same problem — catalog can't reach the database — but different root cause. In ECS, it's a service discovery problem, not a security group.
>
> The interesting thing: DevOps Agent changes its approach based on the platform. Same question, different investigation, correct answer both times.
>
> I won't demo this today. But it's in the workshop if you want to try it."

*[If running late: skip this slide entirely or say "I'll skip the ECS comparison — it's in the workshop materials."]*

---

## Slide 12: How TAMs Can Use This

> "So — how do we actually use this? Three ways: [pause]
>
> One — during customer calls. Customer reports an issue. You open DevOps Agent right there. Fix it in minutes. That's a wow moment. [pause]
>
> Two — proactive work. Run health checks on customer clusters regularly. Find problems before they cause outages. That's what justifies Enterprise Support. [pause]
>
> Three — customer enablement. Show your customers how to use it themselves. Fewer support cases. You can run a guided workshop as part of your SSP.
>
> And if you're interested in the DevOps Agent Ambassador program — this is exactly the kind of thing that drives enrollment."

*[If running late: pick ONE of the three and say "there are more use cases in the slides, but the big one is..."]*

---

## Slide 13: Getting Started

> "If you want to try this yourself — here's how.
>
> DevOps Agent is in Agent Spaces. Same place where UNO runs. The workshop I showed today is public — I'll share the link.
>
> Start with Module 2, EKS Troubleshooting, Scenario 3. That's exactly what I demoed. Takes about 15 minutes.
>
> There's also scenarios for Lambda, ECS, and AI/ML if you want to explore more."

---

## Slide 14: One Thing to Remember

> "[pause] If you take away one thing from today — it's this:
>
> DevOps Agent connects the dots across services. That's the hard part of troubleshooting. It does it in 2 minutes. [pause]
>
> Use it during customer calls. Show real value. Fast.
>
> Try Scenario 3 this week. Fifteen minutes. Then you're ready to demo it for your customers."

---

## Slide 15: Q&A

> "That's it. Happy to take questions. [pause]
>
> [If no questions come, say:]
>
> One question I always get: 'Is it safe in production?' Yes. It's read-only. It reads logs, metrics, configs. No changes unless you approve them.
>
> Another one: 'Does it work with customer accounts?' Yes — as long as you have access. You run it through Agent Spaces with the customer's account context.
>
> [pause] Thanks everyone. Try Scenario 3 this week — come find me if you get stuck."

---

## Timing Guide

| Section | Duration | Cumulative | If running late |
|---------|----------|------------|-----------------|
| Slides 1-2 (Title + Roadmap) | 2 min | 2 min | — |
| Slides 3-6 (Context) | 10 min | 12 min | Cut slide 6 narration to 1 min |
| Slides 7-9 (Live Demo) | 14 min | 26 min | Can't shorten — this is the core |
| Slides 10-13 (Wrap-up) | 10 min | 36 min | Skip slide 11, shorten slide 12 |
| Slides 14-15 (Close + Q&A) | 4-7 min | 40 min | Close Q&A at 2 min |

**Total: ~40 minutes**

**If you hit 30 minutes and still on slide 9:** Skip slide 11 entirely. Shorten slide 12 to one use case. Go straight to "One Thing to Remember."

---

## Tips for Delivery

1. **Practice the demo 3 times** before presenting. Know what the agent will show.
2. **Have a backup recording** ready. Don't be afraid to switch to it.
3. **Talk while the agent runs** — don't sit in silence. Say what it's checking.
4. **Make it relatable** — "You've all had this call from a customer..."
5. **Keep energy up during the demo** — live demos feel slow. Fill gaps with context.
6. **End strong** — "Try Scenario 3 this week. Come find me if you have questions."
7. **Use [pause] moments** — they give weight to key points. Don't rush.
