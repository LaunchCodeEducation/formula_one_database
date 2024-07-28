## MAKE SURE TO RUN THESE AGAINST THE NEWLY CREATED formula_one DATABASE

Using Azure Data Studio, install this extension:
https://learn.microsoft.com/en-us/azure-data-studio/extensions/sql-server-import-extension

This extension will allow you to import .csv files into your database using Azure Data Studio.

We are going to import this data into temporary tables, use these tables to do a SELECT * Insert statement, and then delete these temporary tables.

Each of the existing db table names matches the .csv file name.
So, their temp table naming will follow this format: `TEMP_tableName`.
Please refer to the TEMP table naming style in the step_two INSERT files to make sure you put in the proper TEMP table name.

## Step One
Using each .csv file, create a temp table for it using the Import wizard.
1. DO NOT MARK ANY FIELD AS A PRIMARY KEY 
2. ALLOW NULLS FOR EVERY FIELD
3. MAKE SURE THE SELECTED DATATYPES FOR EACH FIELD MATCH THE ONES USED IN EACH TABLES CREATE_TABLE SCRIPTS FROM THE LAST OVERALL STEP

### Data types for each table:

Table - circuits
```
CREATE TABLE [dbo].[circuits](
        [circuitId] [int] NOT NULL,
        [circuitRef] [nvarchar](50) NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [location] [nvarchar](50) NOT NULL,
        [country] [nvarchar](50) NOT NULL,
        [lat] [float] NOT NULL,
        [lng] [float] NOT NULL,
        [alt] [smallint] NOT NULL,
        [url] [nvarchar](100) NULL
	) ON [PRIMARY]
```

Table - constructor_results
```
CREATE TABLE [dbo].[constructor_results](
        [constructorResultsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [status] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
```

Table

## Step Two
Run each of the Sql files in the 'step_two' folder.
These files WILL DELETE the temp tables we created in Step One








