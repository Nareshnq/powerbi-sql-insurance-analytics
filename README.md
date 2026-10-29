# Power BI SQL Insurance Analytics

End-to-end BI project using SQL Server and Power BI. It covers multi-source data ingestion into SQL Server, calculated columns and DAX measures, drill-through reporting, Power BI Service deployment, on-premises gateway setup, and scheduled refresh with validated data updates.

## How it works

1. **Load the data** — Run `sql/SQLQuery1.sql` in SQL Server Management Studio. It creates the `InsuranceDB` database and documents how insurance policy and claims data (Excel/CSV) is imported into the `dbo.InsuranceData` table, with a schema check via `sp_help`.
2. **Open the report** — Open `pbix/prjct1.pbix` in Power BI Desktop to explore the model, DAX measures, and drill-through reports.
3. **Publish and refresh** — Publish to Power BI Service and configure scheduled refresh so new rows added in SQL Server flow through to the visuals. See [docs/refresh-setup.md](docs/refresh-setup.md) for the full setup guide.

## Power BI Service refresh

- New rows added in SQL Server appear after dataset refresh (scheduled or manual).
- Visual/layout changes require republishing the PBIX.
- If SQL Server is on-prem/local, an on-premises data gateway is required for scheduled refresh.

## Project structure

- `data/raw/` — Source data snapshots used for the refresh workflow (before-refresh, scheduled, and third-file sets).
- `docs/refresh-setup.md` — Step-by-step Power BI Service publish, refresh vs. republish, and gateway guide.
- `pbix/prjct1.pbix` — The Power BI report file.
- `screenshots/` — Report screenshots, including the data overview and before/after refresh views.
- `sql/SQLQuery1.sql` — Database setup, data import steps, and schema reference for Power BI modeling.
