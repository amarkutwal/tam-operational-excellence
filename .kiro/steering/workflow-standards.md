---
inclusion: auto
---

# Workflow Standards

## SOP Format
All SOPs in this workspace should follow this structure:

### Template
```markdown
# SOP: [Name]

## Purpose
One-line description of what this SOP accomplishes.

## When to Run
- Frequency (daily/weekly/ad-hoc)
- Trigger conditions

## Prerequisites
- What needs to be set up before running this

## Steps
1. Step-by-step instructions
2. Each step should be actionable
3. Include what tools/MCP servers are used

## Expected Output
What the TAM should have after running this SOP.

## Customization
How to adapt this for different customers or situations.
```

## Naming Conventions
- SOP files: `kebab-case.md` (e.g., `daily-kickoff.md`)
- Customer folders: Use customer short name (e.g., `acme-corp/`)
- Steering files: Descriptive names (e.g., `tam-context.md`)

## Quality Checklist
Before sharing any workflow with other TAMs:
- [ ] Tested with at least one real customer
- [ ] All placeholder values documented
- [ ] No customer-specific data hardcoded
- [ ] Works in both Kiro and Agent Spaces (where applicable)
- [ ] Includes estimated time to complete
