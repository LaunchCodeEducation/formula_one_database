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
ON constructor_standings (positionText);

-- drivers
CREATE INDEX idx_driver_name
ON drivers (driverRef, forename, surname);

-- driver_standings
CREATE INDEX idx_driver_standings_points
ON driver_standings (points);

CREATE INDEX idx_driver_standings_position
ON driver_standings (position);

CREATE INDEX idx_driver_standings_position_text
ON driver_standings (positionText);

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
ON pit_stops (stop);

CREATE INDEX idx_pit_stop_lap
ON pit_stops (lap);

CREATE INDEX idx_pit_stop_duration
ON pit_stops (duration);

CREATE INDEX idx_pit_stop_millisec
ON pit_stops (milliseconds);

-- qualifying
CREATE INDEX idx_qualifying_q1
ON qualifying (q1);

CREATE INDEX idx_qualifying_q2
ON qualifying (q2);

CREATE INDEX idx_qualifying_q3
ON qualifying (q3);

CREATE INDEX idx_qualifying_position
ON qualifying (position);

-- races
CREATE INDEX idx_races_name
ON races (name);

-- results
CREATE INDEX idx_results_points
ON results (points);

CREATE INDEX idx_results_laps
ON results (laps);

CREATE INDEX idx_results_millisec
ON results (milliseconds);

CREATE INDEX idx_results_fastest_lap
ON results (fastestLap);

CREATE INDEX idx_results_fastest_lap_time
ON results (fastestLapTime);

CREATE INDEX idx_results_fastest_lap_speed
ON results (fastestLapSpeed);

CREATE INDEX idx_results_rank
ON results (rank);

-- sprint_results
CREATE INDEX idx_sprint_results_points
ON sprint_results (points);

CREATE INDEX idx_sprint_results_laps
ON sprint_results (laps);

CREATE INDEX idx_sprint_results_millisec
ON sprint_results (milliseconds);

CREATE INDEX idx_sprint_results_fastest_lap
ON sprint_results (fastestLap);

CREATE INDEX idx_sprint_results_fastest_lap_time
ON sprint_results (fastestLapTime);

-- status
CREATE INDEX idx_status_name
ON status (status);

