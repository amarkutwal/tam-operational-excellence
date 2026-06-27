#!/bin/bash
cd /Users/akkutwal/Documents/myKiro_ENV/tam-operational-excellence

# Stage all changes
git add -A

# Commit
git commit -m "fix: dashboard layout locked — reordered sections, cleaned up files, fixed 3 bugs

- Sections reordered: Strategic Actions, Communications, Strategic Engagement,
  Pending Follow-ups, and Improvement Recommendations now directly after
  Active Escalations (user request)
- Fixed: duplicate 'Case Summary' pills in Data Sources banner
- Fixed: Strategic Focus tooltip clipped by overflow:hidden
- Fixed: Active Escalations showed 'Owner: Amar' instead of 'Yenlo'
- Deleted outdated tam-portfolio-dashboard.html (106KB — replaced by 212KB template)
- Deleted old v1 backup
- Template updated to match current live dashboard layout
- Backup saved: tam-live-dashboard-backup-jun27.html
- Dashboard LOCKED: refresh agent rewritten with strict guardrails"

# Push to personal GitHub
echo "Pushing to GitHub (origin)..."
git push origin main

# Push to GitLab (Project Ulduz)
echo "Refreshing Midway SSH cert..."
mwinit -f
echo "Pushing to GitLab..."
git push gitlab main

echo "✅ Done! Both repos updated."
