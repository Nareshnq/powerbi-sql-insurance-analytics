# powerbi-sql-insurance-analytics
End-to-end BI project using SQL Server and Power BI. Includes multi-source data ingestion, calculated columns and DAX measures, drill-through reporting, Power BI Service deployment, on-prem gateway setup, and scheduled refresh with validated data updates.

## Screenshots
![Summary Page](screenshots/page1_summary.png)
![Drill-through Page](screenshots/page2_drillthrough.png)

## Power BI Service Refresh
- New rows added in SQL Server appear after dataset refresh (scheduled or manual).
- Visual/layout changes require republishing the PBIX.
- If SQL Server is on-prem/local, an On-premises Data Gateway is required for scheduled refresh.


