USE formula_one;

-- CREATE INDEX idx_lastname
-- ON Persons (LastName);

-- constructor_results
CREATE INDEX idx_construct_result_points
ON constructor_results (points);

-- constructor_standings
CREATE INDEX idx_construct_stand_points
ON constructor_standings (points);

CREATE INDEX idx_construct_stand_position
ON constructor_standings (position);

CREATE INDEX idx_construct_stand_position_text
ON constructor_standings (position_text);

-- drivers
CREATE INDEX idx_driver_name
ON drivers (driverRef, forename, surname);

-- driver_standings
CREATE INDEX idx_driver_standings_points
ON driver_standings (points);

CREATE INDEX idx_driver_standings_position
ON driver_standings (position);

CREATE INDEX idx_driver_standings_position_text
ON driver_standings (position_text);

CREATE INDEX idx_driver_standings_wins
ON driver_standings (wins);

-- lap_times
CREATE INDEX idx_lap_times_lap
ON lap_times (lap);

CREATE INDEX idx_lap_times_position
ON lap_times (position);

CREATE INDEX idx_lap_times_millisec
ON lap_times (milliseconds);

-- pit_stops
CREATE INDEX idx_pit_stop_stop
ON lap_times (stop);

CREATE INDEX idx_pit_stop_lap
ON lap_times (lap);

CREATE INDEX idx_pit_stop_duration
ON lap_times (duration);

CREATE INDEX idx_pit_stop_millisec
ON lap_times (milliseconds);

-- qualifying
CREATE INDEX idx_qualifying_q1
ON lap_times (q1);

CREATE INDEX idx_qualifying_q2
ON lap_times (q2);

CREATE INDEX idx_qualifying_q3
ON lap_times (q3);

CREATE INDEX idx_qualifying_position
ON lap_times (position);

-- races
CREATE INDEX idx_races_name
ON lap_times (name);

-- results
CREATE INDEX idx_results_points
ON lap_times (points);

CREATE INDEX idx_results_laps
ON lap_times (laps);

CREATE INDEX idx_results_millisec
ON lap_times (milliseconds);

CREATE INDEX idx_results_fastest_lap
ON lap_times (fastest_lap);

CREATE INDEX idx_results_fastest_lap_time
ON lap_times (fastestLapTime);

CREATE INDEX idx_results_fastest_lap_speed
ON lap_times (fastestLapSpeed);

CREATE INDEX idx_results_rank
ON lap_times (rank);

-- sprint_results
CREATE INDEX idx_sprint_results_points
ON lap_times (points);

CREATE INDEX idx_sprint_results_laps
ON lap_times (laps);

CREATE INDEX idx_sprint_results_millisec
ON lap_times (milliseconds);

CREATE INDEX idx_sprint_results_fastest_lap
ON lap_times (fastest_lap);

CREATE INDEX idx_sprint_results_fastest_lap_time
ON lap_times (fastestLapTime);

-- status
CREATE INDEX idx_status_name
ON status (status);

