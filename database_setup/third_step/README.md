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

## Step Two
Run each of the Sql files in the 'step_two' folder.
These files WILL DELETE the temp tables we created in Step One
