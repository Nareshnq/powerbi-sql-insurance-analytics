# Power BI Service Refresh Setup (SQL Server)

This project uses SQL Server as the primary source. After publishing to Power BI Service, the dataset refresh is configured to pull new rows added to SQL Server.

---

## 1) Publish to Power BI Service
1. Open the `.pbix` in Power BI Desktop
2. Home → Publish
3. Select your workspace

Power BI Service creates:
- a **Report** (visuals + pages)
- a **Dataset** (model + data connection)

---

## 2) Key Concept: Refresh vs Republish
### Dataset Refresh (Data Updates)
Use refresh when:
- new rows are inserted into SQL Server
- existing rows are updated/deleted
- you want visuals to recalculate with latest data

✅ Scheduled refresh updates the dataset and visuals automatically.

### Republish (Report / Model Changes)
Republish when:
- you change visuals, layout, formatting
- you add/edit DAX measures or calculated columns
- you change Power Query steps or add tables/columns

✅ Republish updates the report/model definition in Power BI Service.

---

## 3) Gateway Requirement (If SQL Server is Local / On-Prem)
If SQL Server is running on your PC or inside a private network, Power BI Service requires an **On-premises data gateway**.

#
