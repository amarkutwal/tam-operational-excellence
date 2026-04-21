# Customer Folders

## Structure
Each customer gets their own folder with consistent structure:

```
customers/
├── _template/              ← Copy this for new customers
├── _daily-briefings/       ← Auto-generated daily briefings
├── _weekly-reviews/        ← Auto-generated weekly reviews
├── customer-name/
│   ├── profile.md          ← Customer overview, account IDs, contacts
│   ├── ssp-tracker.md      ← SSP milestones and progress
│   ├── action-items.md     ← Running list of action items
│   ├── cadence-prep-*.md   ← Cadence call prep documents
│   └── notes/              ← Ad-hoc notes and meeting minutes
```

## Adding a New Customer
1. Copy `_template/` folder and rename to customer short name
2. Fill in `profile.md` with account details
3. Run the daily kickoff SOP — it will start populating data automatically

## Important
- **No customer PII** in file names
- Use account IDs for programmatic lookups, short names for folder names
- These folders are for YOUR reference — don't share raw files externally
