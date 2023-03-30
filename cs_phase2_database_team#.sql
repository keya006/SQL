-- Table structure for table airline
DROP TABLE IF EXISTS airline;
CREATE TABLE airline (
	locationID char(50) NOT NULL,
	PRIMARY KEY (locationID)
);

-- Dumping data for table airline
INSERT INTO airline  VALUES
('Air_france', 25),
('American', 45),
('Delta', 46),
('Jetblue', 8),
('Lufthansa', 31),
('Southwest', 22),
('Spirit', 4),
('United', 40);

-- Creating table for person
DROP TABLE IF EXISTS person;
CREATE TABLE person (
	personID char(50) NOT NULL,
	first_name char(50) NOT NULL,
	last_name char(50),
	personlocationID char (50),
	PRIMARY KEY (personID),
	CONSTRAINT fk1 FOREIGN KEY (persolocationID) REFERENCES locationID
);

-- Inserting data for table person
INSERT INTO person VALUES
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1),
('P1', 'Jeanne', 'Nelson', 'plane_1);

-- Creating table for airport
DROP TABLE IF EXISTS airport;
CREATE TABLE airport (
	airportID char(5) NOT NULL,
	NAME char(50) NOT NULL,
	CITY char(15) NOT NULL,
	STATE char(5) NOT NULL,
	locID char(15),
	PRIMARY KEY (airportID),
	CONSTRAINT fk15 (locID) REFERENCES locationID
);


-- Inserting data for table airport
INSERT INTO airport VALUES
('ABQ', 'Albuquerque International Sunport
', '', 'NM', ''),
('ANC', 'Ted Stevens Anchorage International Airport
', '', 'NM', ''),
('ATL', '', '', 'NM', ''),
('BDL', '', '', 'NM', ''),
('BFI', '', '', 'NM', ''),
('BHM', '', '', 'NM', ''),
('BNA', '', '', 'NM', ''),
('BOI', '', '', 'NM', ''),
('BOS', '', '', 'NM', ''),
('BTV', '', '', 'NM', ''),
('BWI', '', '', 'NM', ''),
('BZN', '', '', 'NM', ''),
('CHS', '', '', 'NM', ''),
('CLE', '', '', 'NM', ''),
('CLT', '', '', 'NM', ''),
('CRW', '', '', 'NM', ''),
('DAL', '', '', 'NM', ''),
('DCA', '', '', 'NM', ''),
('DEN', '', '', 'NM', ''),
('DFW', '', '', 'NM', ''),
('DSM', '', '', 'NM', ''),
('DTW', '', '', 'NM', ''),
('EWR', '', '', 'NM', ''),
('FAR', '', '', 'NM', ''),
('FSD', '', '', 'NM', ''),
('GSN', '', '', 'NM', ''),
('GUM', '', '', 'NM', ''),
('HNL', '', '', 'NM', ''),
('HOU', '', '', 'NM', ''),
('IAD', '', '', 'NM', ''),
('IAH', '', '', 'NM', ''),
('ICT', '', '', 'NM', ''),
('ILG', '', '', 'NM', ''),
('IND', '', '', 'NM', ''),
('ISP', '', '', 'NM', ''),
('JAC', '', '', 'NM', ''),
('JAN', '', '', 'NM', ''),
('JFK', '', '', 'NM', ''),
('LAS', '', '', '', ''),
('LGA', '', '', '', ''),
('LIT', '', '', '', ''),
('MCO', '', '', '', ''),
('MDW', '', '', '', ''),
('MHT', '', '', '', ''),
('MKE', '', '', '', ''),
('MRI', '', '', '', ''),
('MSP', '', '', '', ''),
('MSY', '', '', '', ''),
('OKC', '', '', '', ''),
('OMA', '', '', '', ''),
('ORD', '', '', '', ''),
('PDX', '', '', '', ''),
('PHL', '', '', '', ''),
('PHX', '', '', '', ''),
('PVD', '', '', '', ''),
('PWM', '', '', '', ''),
('SDF', '', '', '', ''),
('SEA', '', '', '', ''),
('SJU', '', '', '', ''),
('SLC', '', '', '', ''),
('STL', '', '', '', ''),
('STT', '', '', '', '');

-- Creating table for route
DROP TABLE IF EXISTS route;
CREATE TABLE route (
	routeID char(30) NOT NULL,
	PRIMARY KEY (routeID)
);

-- Inserting data for table route
INSERT INTO route VALUES
('circle_east_coast'),
('circle_west_coast'),
('eastbound_north_milk_run'),
('eastbound_north_nonstop'),
('eastbound_south_milk_run'),
('hub_xchg_southeast'),
('hub_xchg_southwest'),
('local_texas'),
('northbound_east_coast'),
('northbound_west_coast'),
('southbound_midwest'),
('westbound_north_milk_run'),
('westbound_north_nonstop'),
('westbound_south_nonstop');


-- Creating table for leg
DROP TABLE IF EXISTS leg;
CREATE TABLE LEG (
	legID char(10) NOT NULL,
	distance int NOT NULL,
	depart_airportID char(5) NOT NULL,
	arrive_airportID char(5) NOT NULL,
	PRIMARY KEY (legID),
	CONSTRAINT fk9 FOREIGN KEY (depart_airportID) REFERENCES airportID,
	CONSTRAINT fk10 FOREIGN KEY (arrive_airportID) REFERENCES airportID
);


-- Inserting values into table leg
INSERT INTO leg VALUES
('leg_4', 600, 'ATL', 'ORD'),
('leg_18', 1200, 'LAX', 'DFW'),
('leg_24', 1800, 'SEA', 'ORD'),
('leg_23', 2400, 'SEA', 'JFK'),
('leg_18', 1200, 'LAX', 'DFW'),
('leg_25', 600, 'ORD', 'ATL'),
('leg_22', 800, 'ORD', 'LAX'),
('leg_12', 200, 'IAH', 'DAL'),
('leg_3', 800, 'ATL', 'JFK'),
('leg_19', 1000, 'LAX', 'SEA'),
('leg_21', 800, 'ORD', 'DFW'),
('leg_16', 800, 'JFK', 'ORD'),
('leg_17', 2400, 'JFK', 'SEA'),
('leg_27', 1600, 'ATL', 'LAX'),
('leg_11', 600, 'IAD', 'ORD'),
('leg_13', 1400, 'IAH', 'LAX'),
('leg_14', 2400, 'ISP', 'BFI'),
('leg_15', 800, 'JFK', 'ATL'),
('leg_2', 600, 'ATL', 'IAH'),
('leg_5', 1000, 'BFI', 'LAX');
































