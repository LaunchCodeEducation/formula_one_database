USE formula_one;

-- constructorId references constructors
-- circuitId references circuits
-- driverId references drivers
-- raceId references races
-- statusId references status

-- constructor_results
ALTER TABLE constructor_results
ADD CONSTRAINT FK_ConstructResults_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE constructor_results
ADD CONSTRAINT FK_ConstructResults_Constructor
FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);

-- constructor_standings
ALTER TABLE constructor_standings
ADD CONSTRAINT FK_ConstructStandings_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE constructor_standings
ADD CONSTRAINT FK_ConstructStandings_Constructor
FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);

-- driver_standings
ALTER TABLE driver_standings
ADD CONSTRAINT FK_DriverStandings_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE driver_standings
ADD CONSTRAINT FK_DriverStandings_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

-- lap_times
ALTER TABLE lap_times
ADD CONSTRAINT FK_LapTime_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE lap_times
ADD CONSTRAINT FK_LapTime_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

-- pit_stops
ALTER TABLE pit_stops
ADD CONSTRAINT FK_PitStops_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE pit_stops
ADD CONSTRAINT FK_PitStops_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

-- qualifying
ALTER TABLE qualifying
ADD CONSTRAINT FK_Qualifying_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE qualifying
ADD CONSTRAINT FK_Qualifying_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

ALTER TABLE qualifying
ADD CONSTRAINT FK_Qualifying_Constructor
FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);

-- races
ALTER TABLE races
ADD CONSTRAINT FK_Races_Circuit
FOREIGN KEY (circuitId) REFERENCES circuits(circuitId);

-- results
ALTER TABLE results
ADD CONSTRAINT FK_Results_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE results
ADD CONSTRAINT FK_Results_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

ALTER TABLE results
ADD CONSTRAINT FK_Results_Constructor
FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);

ALTER TABLE results
ADD CONSTRAINT FK_Results_Status
FOREIGN KEY (statusId) REFERENCES status(statusId);

-- sprint_results
ALTER TABLE sprint_results
ADD CONSTRAINT FK_SprintResults_Race
FOREIGN KEY (raceId) REFERENCES races(raceId);

ALTER TABLE sprint_results
ADD CONSTRAINT FK_SprintResults_Driver
FOREIGN KEY (driverId) REFERENCES drivers(driverId);

ALTER TABLE sprint_results
ADD CONSTRAINT FK_SprintResults_Constructor
FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);

ALTER TABLE sprint_results
ADD CONSTRAINT FK_SprintResults_Status
FOREIGN KEY (statusId) REFERENCES status(statusId);



