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

Table - constructor_standings
```
CREATE TABLE [dbo].[constructor_standings](
        [constructorStandingsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [position] [int] NOT NULL,
        [positionText] [nvarchar](50) NULL,
        [wins] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - constructors
```
CREATE TABLE [dbo].[constructors](
        [constructorId] [int] NOT NULL,
        [constructorRef] [nvarchar](50) NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [nationality] [nvarchar](50) NOT NULL,
        [url] [nvarchar](100) NOT NULL
    ) ON [PRIMARY]
```

Table - driver_standings
```
CREATE TABLE [dbo].[driver_standings](
        [driverStandingsId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [points] [float] NOT NULL,
        [position] [int] NOT NULL,
        [positionText] [nvarchar](50) NOT NULL,
        [wins] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - drivers
```
CREATE TABLE [dbo].[drivers](
        [driverId] [int] NOT NULL,
        [driverRef] [nvarchar](50) NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [code] [nvarchar](50) NOT NULL,
        [forename] [nvarchar](50) NOT NULL,
        [surname] [nvarchar](50) NOT NULL,
        [dob] [date] NULL,
        [nationality] [nvarchar](50) NULL,
        [url] [nvarchar](100) NULL
    ) ON [PRIMARY]
```

Table - lap_times
```
CREATE TABLE [dbo].[lap_times](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [position] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - pit_stops
```
CREATE TABLE [dbo].[pit_stops](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [stop] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [time] [time](7) NOT NULL,
        [duration] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - qualifying
```
CREATE TABLE [dbo].[qualifying](
        [qualifyId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [int] NOT NULL,
        [position] [int] NOT NULL,
        [q1] [nvarchar](50) NOT NULL,
        [q2] [nvarchar](50) NULL,
        [q3] [nvarchar](50) NULL
    ) ON [PRIMARY]
```

Table - races
```
CREATE TABLE [dbo].[races](
        [raceId] [int] NOT NULL,
        [year] [int] NOT NULL,
        [round] [int] NOT NULL,
        [circuitId] [int] NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [date] [date] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [url] [nvarchar](100) NOT NULL,
        [fp1_date] [nvarchar](50) NOT NULL,
        [fp1_time] [nvarchar](50) NOT NULL,
        [fp2_date] [nvarchar](50) NOT NULL,
        [fp2_time] [nvarchar](50) NOT NULL,
        [fp3_date] [nvarchar](50) NOT NULL,
        [fp3_time] [nvarchar](50) NOT NULL,
        [quali_date] [nvarchar](50) NOT NULL,
        [quali_time] [nvarchar](50) NOT NULL,
        [sprint_date] [nvarchar](50) NOT NULL,
        [sprint_time] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
```

Table - results
```
CREATE TABLE [dbo].[results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](100) NULL,
        [rank] [nvarchar](100) NULL,
        [fastestLapTime] [nvarchar](100) NOT NULL,
        [fastestLapSpeed] [nvarchar](100) NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - seasons
```
CREATE TABLE [dbo].[seasons](
        [year] [int] NOT NULL,
        [url] [nvarchar](100) NOT NULL
    ) ON [PRIMARY]
```

Table - sprint_results
```
CREATE TABLE [dbo].[sprint_results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [int] NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](50) NULL,
        [fastestLapTime] [nvarchar](50) NOT NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
```

Table - status
```
CREATE TABLE [dbo].[status](
        [statusId] [int] NOT NULL,
        [status] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
```

## Step Two
Run each of the Sql files in the 'step_two' folder.
These files WILL DELETE the temp tables we created in Step One








