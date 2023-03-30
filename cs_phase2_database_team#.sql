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
	taxID char(20) UNIQUE,
	pilot_tail char(20),
	pilot_airline char(15),
	PRIMARY KEY (personID),
	CONSTRAINT fk1 FOREIGN KEY (persolocationID) REFERENCES locationID
);

-- Inserting data for table person
INSERT INTO person VALUES
('P1', 'Jeanne', 'Nelson', 31, '', 'plane_1','330-12-6907'),
('P10', 'Lawrence', 'Morgan', 15, '', 'plane_9', '769-60-1266'),
('P11', 'Sandra', 'Cruz', 22, '', 'plane_9', '369-22-9505'),
('P12', 'Dan', 'Ball', 24, '', 'plane_11', '680-92-5329'),
('P13', 'Bryant', 'Figueroa', 24, '', 'plane_2', '513-40-4168'),
('P14', 'Dana', 'Perry', 13, '', 'plane_2', '454-71-7847'),
('P15', 'Matt', 'Hunt', 30, '', 'plane_2', '153-47-8101'),
('P16', 'Edna', 'Brown', 28, '', 'plane_15', '598-47-5172'),
('P17', 'Ruby', 'Burgess', 36, '', 'plane_15', '865-71-6800'),
('P18', 'Esther', 'Pittman', 23, '', 'port_2', '250-86-2784'),
('P19', 'Doug', 'Fowler', 2, '', 'port_4', '386-39-7881'),
('P2', 'Roxanne', 'Byrd', 9, '', 'plane_1', '842-88-1257'),
('P20', 'Thomas', 'Olson', 28, '', 'port_3', '522-44-3098'),
('P21', 'Mona', 'Harrison', 2, 771, 'port_4', '621-34-5755'),
('P22', 'Arlene', 'Massey', 3, 374, 'port_2', '177-47-9877'),
('P23', 'Judith', 'Patrick', 12, 414, 'port_3', '528-64-7912'),
('P24', 'Reginald', 'Rhodes', 34, 292, 'plane_1', '803-30-1789'),
('P25', 'Vincent', 'Garcia', 13, 390, 'plane_1', '986-76-1587'),
('P26', 'Cheryl', 'Moore', 20, 302, 'plane_4', '584-77-5105'),
('P27', 'Michael', 'Rivera', '', 470, 'plane_7', ''),
('P28', 'Luther', 'Matthews', '', 208, 'plane_8', ''),
('P29', 'Moses', 'Parks', '', 292, 'plane_8', ''),
('P3', 'Tanya', 'Nguyen', 11, '', '', '750-24-7616'),
('P30', 'Ora', 'Steele', '', 686, 'plane_9', ''),
('P31', 'Antonio', 'Flores', '', 547, 'plane_9', ''),
('P32', 'Glenn', 'Ross', '', 257, 'plane_11', ''),
('P33', 'Irma', 'Thomas', '', 564, 'plane_11', ''),
('P34', 'Ann', 'Maldonado', '', 211, 'plane_2', ''),
('P35', 'Jeffrey', 'Cruz', '', 233, 'plane_2', ''),
('P36', 'Sonya', 'Price', '', 293, 'plane_15', ''),
('P37', 'Tracy', 'Hale', '', 552, 'plane_15', ''),
('P38', 'Albert', 'Simmons', '', 812, 'port_1', ''),
('P39', 'Karen', 'Terry', '', 541, 'port_9', ''),
('P4', 'Kendra', 'Jacobs', 24, '', 'plane_4', '776-21-8098'),
('P40', 'Glen', 'Kelley', '', 441, 'plane_4', ''),
('P41', 'Brooke', 'Little', '', 875, 'plane_4', ''),
('P42', 'Daryl', 'Nguyen', '', 691, 'port_3', ''),
('P43', 'Judy', 'Willis', '', 572, 'port_1', ''),
('P44', 'Marco', 'Klein', '', 572, 'port_2', ''),
('P45', 'Angelica', 'Hampton', '', 663, 'port_5', ''),
('P5', 'Jeff', 'Burton', 27, '', 'plane_4', '933-93-2165'),
('P6', 'Randal', 'Parks', 38, '', 'plane_7', '707-84-4555'),
('P7', 'Sonya', 'Owens', 13, '', 'plane_7', '450-25-5617'),
('P8', 'Bennie', 'Palmer', 12, '', 'plane_8', '701-38-2179'),
('P9', 'Marlene', 'Warner', 13, '', 'plane_8', '936-44-6941');

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
('ABQ', 'Albuquerque International Sunport', 'Albuquerque', 'NM', ''),
('ANC', 'Ted Stevens Anchorage International Airport', 'Anchorage', 'AK', ''),
('ATL', 'Hartsfield-Jackson Atlanta International Airport', 'Atlanta', 'GA', 'port_1'),
('BDL', 'Bradley International Airport', 'Hartford', 'CT', ''),
('BFI', 'King County International Airport', 'Seattle', 'WA', 'port_10'),
('BHM', 'Birmingham‚ÄìShuttlesworth International Airport', 'Birmingham', 'AL', ''),
('BNA', 'Nashville International Airport', 'Nashville', 'TN', ''),
('BOI', 'Boise Airport', 'Boise', 'ID', ''),
('BOS', 'General Edward Lawrence Logan International Airport', 'Boston', 'MA', ''),
('BTV', 'Burlington International Airport', 'Burlington', 'VT', ''),
('BWI', 'Baltimore_Washington International Airport', 'Baltimore', 'MD', ''),
('BZN', 'Bozeman Yellowstone International Airport', 'Bozeman', 'MT', ''),
('CHS', 'Charleston International Airport', 'Charleston', 'SC', ''),
('CLE', 'Cleveland Hopkins International Airport', 'Cleveland', 'OH', ''),
('CLT', 'Charlotte Douglas International Airport', 'Charlotte', 'NC', ''),
('CRW', 'Yeager Airport', 'Charleston', 'WV', ''),
('DAL', 'Dallas Love Field', 'Dallas', 'TX', 'port_7'),
('DCA', 'Ronald Reagan Washington National Airport', 'Washington', 'DC', 'port_9'),
('DEN', 'Denver International Airport', 'Denver', 'CO', 'port_3'),
('DFW', 'Dallas-Fort Worth International Airport', 'Dallas', 'TX', 'port_2'),
('DSM', 'Des Moines International Airport', 'Des Moines', 'IA', ''),
('DTW', 'Detroit Metro Wayne County Airport', 'Detroit', 'MI', ''),
('EWR', 'Newark Liberty International Airport', 'Newark', 'NJ', ''),
('FAR', 'Hector International Airport', 'Fargo', 'ND', ''),
('FSD', 'Joe Foss Field', 'Sioux Falls', 'SD', ''),
('GSN', 'Saipan International Airport', 'Obyan Saipan Island', 'MP', ''),
('GUM', 'Antonio B_Won Pat International Airport', 'Agana Tamuning', 'GU', ''),
('HNL', 'Daniel K. Inouye International Airport', 'Honolulu Oahu', 'HI', ''),
('HOU', 'William P_Hobby Airport', 'Houston', 'TX', 'port_18'),
('IAD', 'Washington Dulles International Airport', 'Washington', 'DC', 'port_11'),
('IAH', 'George Bush Intercontinental Houston Airport', 'Houston', 'TX', 'port_13'),
('ICT', 'Wichita Dwight D_Eisenhower National Airport ', 'Wichita', 'KS', ''),
('ILG', 'Wilmington Airport', 'Wilmington', 'DE', ''),
('IND', 'Indianapolis International Airport', 'Indianapolis', 'IN', ''),
('ISP', 'Long Island MacArthur Airport', 'New York Islip', 'NY', 'port_14'),
('JAC', 'Jackson Hole Airport', 'Jackson', 'WY', ''),
('JAN', 'Jackson_Medgar Wiley Evers International Airport', 'Jackson', 'MS', ''),
('JFK', 'John F_Kennedy International Airport', 'New York', 'NY', 'port_15'),
('LAS', 'Harry Reid International Airport', 'Las Vegas', 'NV', ''),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'CA', 'port_5')
('LGA', 'LaGuardia Airport', 'New York', 'NY', ''),
('LIT', 'Bill and Hillary Clinton National Airport', 'Little Rock', 'AR', ''),
('MCO', 'Orlando International Airport', 'Orlando', 'FL', ''),
('MDW', 'Chicago Midway International Airport', 'Chicago', 'IL', ''),
('MHT', 'Manchester_Boston Regional Airport', 'Manchester', 'NH', ''),
('MKE', 'Milwaukee Mitchell International Airport', 'Milwaukee', 'WI', ''),
('MRI', 'Merrill Field', 'Anchorage', 'AK', ''),
('MSP', 'Minneapolis_St_Paul International Wold_Chamberlain Airport', 'Minneapolis Saint Paul', 'MN', ''),
('MSY', 'Louis Armstrong New Orleans International Airport', 'New Orleans', 'LA', ''),
('OKC', 'Will Rogers World Airport', 'Oklahoma City', 'OK', ''),
('OMA', 'Eppley Airfield', 'Omaha', 'NE', ''),
('ORD', 'O_Hare International Airport', 'Chicago', 'IL', 'port_4'),
('PDX', 'Portland International Airport', 'Portland', 'OR', ''),
('PHL', 'Philadelphia International Airport', 'Philadelphia', 'PA', ''),
('PHX', 'Phoenix Sky Harbor International Airport', 'Phoenix', 'AZ', ''),
('PVD', 'Rhode Island T_F_Green International Airport', 'Providence', 'RI', ''),
('PWM', 'Portland International Jetport', 'Portland', 'ME', ''),
('SDF', 'Louisville International Airport', 'Louisville', 'KY', ''),
('SEA', 'Seattle‚ÄìTacoma International Airport', 'Seattle Tacoma', 'WA', 'port_17'),
('SJU', 'Luis Munoz Marin International Airport', 'San Juan Carolina', 'PR', ''),
('SLC', 'Salt Lake City International Airport', 'Salt Lake City', 'UT', ''),
('STL', 'St_Louis Lambert International Airport', 'Saint Louis', 'MO', ''),
('STT', 'Cyril E_King Airport', 'Charlotte Amalie Saint Thomas', 'VI', '');

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


-- Creating location table
DROP TABLE IF EXISTS location;
CREATE TABLE LOCATION (
	locationID char(15) NOT NULL,
	PRIMARY KEY (locationID)
);


-- Inserting data into location table
INSERT INTO location VALUES
('plane_1'),
('plane_11'),
('plane_15'),
('plane_2'),
('plane_4'),
('plane_7'),
('plane_8'),
('plane_9'),
('port_1'),
('port_10'),
('port_11'),
('port_13'),
('port_14'),
('port_15'),
('port_17'),
('port_18'),
('port_2'),
('port_3'),
('port_4'),
('port_5'),
('port_7'),
('port_9');



















