# Presentation: Investigating Failures in Containerized Applications
## Using DevOps Agent

**Presenter:** Amar Kutwal  
**Audience:** Generalist TAMs  
**Duration:** 30-45 minutes  
**Status:** Draft — outline only, pending validation with Chetan

---

## Outline

### 1. Why Containers Matter for TAMs (5 min)
- EKS/ECS adoption across ES customers
- Common pain points TAMs hear about
- How this knowledge helps in customer conversations

### 2. Common Container Failure Patterns (10 min)
- CrashLoopBackOff — what it means, common causes
- OOMKilled — memory limits and resource management
- ImagePullBackOff — registry and authentication issues
- Pod scheduling failures — resource constraints
- Network connectivity issues

### 3. Live Demo: DevOps Agent Investigation (15 min)
- Scenario: Application pods are crashing
- Use DevOps Agent to:
  - Check pod status and events
  - Analyze logs for error patterns
  - Identify resource constraints
  - Suggest remediation steps

### 4. Resource Management & Scaling (10 min)
- Setting proper resource requests and limits
- Horizontal Pod Autoscaler basics
- Cluster Autoscaler / Karpenter overview
- How TAMs can advise customers on right-sizing

### 5. Key Takeaways for TAMs (5 min)
- What to look for in customer EKS environments
- When to escalate vs. when to guide
- Useful kubectl commands every TAM should know

---

## Demo Prep Checklist
- [ ] EKS demo cluster running (see eksctl-cluster.yaml in k8s-demo/)
- [ ] Failure scenarios deployed (CrashLoop, OOM, ImagePull)
- [ ] DevOps Agent configured and tested
- [ ] Validate with Chetan that demo doesn't overlap his content
