-- ONLY RUN THIS
-- AFTER you've imported all the .csv files as properly named temp tables


USE formula_one;

-- circuits
INSERT INTO dbo.circuits
SELECT * FROM dbo.temp_circuits;

DROP dbo.temp_circuits;

-- constructor_results
INSERT INTO dbo.constructor_results
SELECT * FROM dbo.temp_constructor_results;

DROP dbo.temp_constructor_results;

-- constructor_standings
INSERT INTO dbo.constructor_standings
SELECT * FROM dbo.temp_constructor_standings;

DROP dbo.temp_constructor_standings;

-- constructors
INSERT INTO dbo.constructors
SELECT * FROM dbo.temp_constructors;

DROP dbo.temp_constructors;

-- driver_standings
INSERT INTO dbo.driver_standings
SELECT * FROM dbo.temp_driver_standings;

DROP dbo.temp_driver_standings;

-- drivers
INSERT INTO dbo.drivers
SELECT * FROM dbo.temp_drivers;

DROP dbo.temp_drivers;

-- lap_times
INSERT INTO dbo.lap_times
SELECT * FROM dbo.temp_lap_times;

DROP dbo.temp_lap_times;

-- pit_stops
INSERT INTO dbo.pit_stops
SELECT * FROM dbo.temp_pit_stops;

DROP dbo.temp_pit_stops;

-- qualifying
INSERT INTO dbo.qualifying
SELECT * FROM dbo.temp_qualifying;

DROP dbo.temp_qualifying;

-- races
INSERT INTO dbo.races
SELECT * FROM dbo.temp_races;

DROP dbo.temp_races;

-- results
INSERT INTO dbo.results
SELECT * FROM dbo.temp_results;

DROP dbo.temp_results;

-- seasons
INSERT INTO dbo.seasons
SELECT * FROM dbo.temp_seasons;

DROP dbo.temp_seasons;

-- sprint_results
INSERT INTO dbo.sprint_results
SELECT * FROM dbo.temp_sprint_results;

DROP dbo.temp_sprint_results;

-- status
INSERT INTO dbo.status
SELECT * FROM dbo.temp_status;

DROP dbo.temp_status;