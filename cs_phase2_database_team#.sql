-- Table structure for table location
DROP TABLE IF EXISTS location;
CREATE TABLE location (
	locationID char(50) NOT NULL,
	PRIMARY KEY (locationID)
);

-- Dumping data for table location
INSERT INTO location VALUES
('plane_1'),
('plane_11'),
('plane_15'),
('plane_2'),
('plane_4'),
('plane_7'),
('plane_8'),
('plane_9'),
('plane_1'),
('plane_10'),
('plane_11'),
('plane_13'),
('plane_14'),
('plane_15'),
('plane_17'),
('plane_18'),
('plane_2'),
('plane_3'),
('plane_4'),
('plane_5'),
('plane_7'),
('plane_9');

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


