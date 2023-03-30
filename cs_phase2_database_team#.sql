-- Table structure for table airline
DROP TABLE IF EXISTS airline;
CREATE TABLE airline (
	locationID char(50) NOT NULL,
	PRIMARY KEY (locationID)
);

-- Dumping data for table airline
INSERT INTO airline  VALUES
('Air_france', 25)
('American', 45)
('Delta', 46)
('Jetblue', 8)
('Lufthansa', 31)
('Southwest', 22)
('Spirit', 4)
('United', 40)

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























