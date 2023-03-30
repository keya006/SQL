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
	experience int,
	miles int,
	personlocationID char (50),
	PRIMARY KEY (personID),
	CONSTRAINT fk1 FOREIGN KEY (persolocationID) REFERENCES locationID
);

-- Inserting data for table person
INSERT INTO person VALUES
('P1', 'Jeanne', '', '', '', ''),
('P10', 'Lawrence', '', '', '', ''),
('P11', 'Sandra', '', '', '', ''),
('P12', 'Dan', '', '', '', ''),
('P13', 'Bryant', '', '', '', ''),
('P14', 'Dana', '', '', '', ''),
('P15', 'Matt', '', '', '', ''),
('P16', 'Edna', '', '', '', ''),
('P17', 'Ruby', '', '', '', ''),
('P18', 'Esther', '', '', '', ''),
('P19', 'Doug', '', '', '', ''),
('P2', 'Roxanne', '', '', '', ''),
('P20', 'Thomas', '', '', '', ''),
('P21', 'Mona', '', '', '', ''),
('P22', 'Arlene', '', '', '', ''),
('P23', 'Judith', '', '', '', ''),
('P24', 'Reginald', '', '', '', ''),
('P25', 'Vincent', '', '', '', ''),
('P26', 'Cheryl', '', '', '', ''),
('P27', 'Michael', '', '', '', ''),
('P28', 'Luther', '', '', '', ''),
('P29', 'Moses', '', '', '', ''),

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


-- Creating table for ticket
DROP TABLE IF EXISTS ticket;
CREATE TABLE ticket (
	ticketID char(15) NOT NULL,
	deplane_airport char(5) NOT NULL,
	personID char(5) NOT NULL,
	PRIMARY KEY (ticketID),
	CONSTRAINTS fk5 FOREIGN KEY (deplane_airport) REFERENCES,
	CONSTRAINT fk7 FOREIGN KEY (personID) REFERENCES personID
);


-- INSERTING DATA INTO TABLE ticket
INSERT INTO ticket VALUES
('tkt_am_17', 'ORD', 'P40'),
('tkt_am_18', 'LAX', 'P41'),
('tkt_am_3', 'LAX', 'P26'),
('tkt_dl_1', 'JFK', 'P24'),
('tkt_dl_11', 'LAX', 'P34'),
('tkt_dl_12', 'LAX', 'P35'),
('tkt_dl_2', 'JFK', 'P25'),
('tkt_sp_13', 'ATL', 'P36'),
('tkt_sp_14', 'DCA', 'P37'),
('tkt_sp_16', 'ATL', 'P39'),
('tkt_sw_10', 'HOU', 'P33'),
('tkt_sw_7', 'ORD', 'P30'),
('tkt_sw_8', 'ORD', 'P31'),
('tkt_sw_9', 'HOU', 'P32'),
('tkt_un_15', 'ORD', 'P38'),
('tkt_un_4', 'DCA', 'P27'),
('tkt_un_5', 'ATL', '28'),
('tkt_un_6', 'ORD', '29');


-- Creating table for flight
DROP TABLE IF EXISTS flight;
CREATE TABLE FLIGHT (
	flightID char(10) NOT NULL,
	support_tail char(10),
	support_airline char(10),
	progress int,
	airplane_status char(15),
	next_time char(15),
	routeID char(20) NOT NULL,
	PRIMARY KEY (flightID),
	CONSTRAINT fk4 (support_tail) REFERENCES tail_num,
	CONSTRAINT fk4 (support_airline) REFERENCES airlineID,
	CONSTRAINT fk8 (routeID) REFERENCES routeID
);


-- Inserting data into table flight
INSERT INTO flight VALUES
('AM_1523', 'n330ss', 'American', 2, 'on_ground', '14:30:00', 'circle_west_coast'),
('DL_1174', 'n106js', 'Delta', 0, 'on_ground', '08:00:00' 'northbound_east_coast'),
('DL_1243', 'n110jn', 'Delta', 0, 'on_ground', '09:30:00' 'westbound_north_nonstop'),
('DL_3410', '', '', '', '', '' 'circle_east_coast'),
('SP_1880', 'n256ap', 'Spirit', 2, 'in_flight', '15:00:00' 'circle_east_coast'),
('SW_1776', 'n401fj', 'Southwest', 2, 'in_flight', '14:00:00' 'hub_xchg_southwest'),
('SW_610', 'n118fm', 'Southwest', 2, 'in_flight', '11:30:00' 'local_texas'),
('UN_1899', 'n517ly', 'United', 0, 'on_ground', '09:30:00' 'eastbound_north_milk_run'),
('UN_523', 'n620la', 'United', 1, 'in_flight', '11:00:00' 'hub_xchg_southeast'),
('UN_717', '', '', '', '', '' 'circle_west_coast');



-- Creating table for airplane
DROP TABLE IF EXISTS airplane;
CREATE TABLE airplane (
	tail_num char(10) NOT NULL,
	airlineID char(10) NOT NULL,
	seat_cap int NOT NULL,
	speed int NOT NULL,
	plane_type char(10),
	locID char(10),
	PRIMARY KEY (tail_num),
	CONSTRAINT fk1 (airlineID) REFERENCES airlineID,
	CONSTRAINT fk14 (locID) REFERENCES locationID
);


-- Inserting data into table airplane
INSERT INTO airplane VALUES
('n330ss', 'American', 4, 200, 'jet', 'plane_4'),
('n380sd', 'American', 5, 400, 'jet', ''),
('n106js', 'Delta', 4, 200, 'jet', 'plane_1'),
('n110jn', 'Delta', 5, 600, 'jet', 'plane_2'),
('n127js', 'Delta', 4, 800, '', ''),
('n156sq', 'Delta', 8, 100, '', ''),
('n161fk', 'JetBlue', 4, 200, 'jet', ''),
('n337as', 'JetBlue', 5, 400, 'jet', ''),
('n118fm', 'Southwest', 4, 100, 'prop', 'plane_11'),
('n401fj', 'Southwest', 4, 200, 'jet', 'plane_9'),
('n653fk', 'Southwest', 6, 400, 'jet', ''),
('n815pw', 'Southwest', 3, 200, 'prop', ''),
('n256ap', 'Spirit', 4, 400, 'jet', 'plane_15'),
('n451fi', 'United', 5, 400, 'jet', ''),
('n517ly', 'United', 4, 400, 'jet', 'plane_7'),
('n616lt', 'United', 7, 400, 'jet', ''),
('n620la', 'United', 4, 200, 'prop', 'plane_8');






















