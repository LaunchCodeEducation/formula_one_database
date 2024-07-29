# formula_one_database

## Purpose of Repo

This repo will contain the necessary SQL code and instructions to setup a full database for Data Analysis students to use for SQL practice.

For the current data and relations, I will try to set it up with read-only permissions for non-admin members hitting the DB.

You can modify this code and it's eventual database however you want.

Original data is pulled from this kaggle page:
https://www.kaggle.com/datasets/melissamonfared/formula-1?select=constructor_results.csv


## Creating this database as a local DB

On Mac, we can use Docker to run a copy of MS SQL Server locally and connect to it using Azure Data Studio.
This will allow you to create a local copy of this database, which will allow you to run CREATE/UPDATE/DELETE actions against it.

Instructions for Mac: https://builtin.com/software-engineering-perspectives/sql-server-management-studio-mac


On Windows, you won't need Docker. You can install MS SQL Server 2022 Express directly onto your windows device: 
https://learn.microsoft.com/en-us/sql/database-engine/install-windows/install-sql-server?view=sql-server-ver16

