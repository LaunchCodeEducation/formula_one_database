USE formula_one;

INSERT INTO dbo.lap_times
SELECT * FROM dbo.temp_lap_times;

DROP dbo.temp_lap_times;
