/*
===============================================================================
Project: Insurance Analytics (SQL Server + Power BI)
Purpose:
- Create demo database
- Document how insurance data is imported into SQL Server
- Capture table schema reference for Power BI reporting


===============================================================================
*/

-- Step 1: Recreate database
IF DB_ID('InsuranceDB') IS NOT NULL
BEGIN
    ALTER DATABASE InsuranceDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE InsuranceDB;
END;
GO

CREATE DATABASE InsuranceDB;
GO

USE InsuranceDB;
GO


/*
Step 2: Import Insurance Data into SQL Server

Data Source:
- Insurance policy and claims data stored in Excel / CSV format

Import Method (SSMS):
1. Right-click InsuranceDB
2. Tasks → Import Data
3. Select source (Excel / Flat File)
4. Destination: SQL Server
5. Target table: dbo.InsuranceData
6. Review mappings and complete import

The table dbo.InsuranceData is created during the import process.
*/

/*
Step 3: Verify table schema after import

Run the following AFTER data import: */
EXEC sp_help 'dbo.InsuranceData';

/* This is used to:
- Validate column names and data types
- Reference schema for Power BI data modeling
*/



