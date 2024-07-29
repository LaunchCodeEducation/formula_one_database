-- ONLY RUN THIS 
-- AFTER you've imported the .csv files as temp tables
-- AND have run the INSERT_DATA_FROM_TEMP sql successfully

-- THIS SQL will ERASE all the temp tables


USE formula_one;


DROP TABLE dbo.temp_circuits;
DROP TABLE dbo.temp_constructor_results;
DROP TABLE dbo.temp_constructor_standings;
DROP TABLE dbo.temp_constructors;
DROP TABLE dbo.temp_driver_standings;
DROP TABLE dbo.temp_drivers;
DROP TABLE dbo.temp_lap_times;
DROP TABLE dbo.temp_pit_stops;
DROP TABLE dbo.temp_qualifying;
DROP TABLE dbo.temp_races;
DROP TABLE dbo.temp_results;
DROP TABLE dbo.temp_seasons;
DROP TABLE dbo.temp_sprint_results;
DROP TABLE dbo.temp_status;