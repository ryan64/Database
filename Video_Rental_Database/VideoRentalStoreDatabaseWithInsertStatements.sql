/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`videorentals` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `videorentals`;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers
(
  customerID varchar(11) NOT NULL,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  gender varchar(1) NOT NULL,
  birthday date NOT NULL,
  addressline varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  postalcode varchar(50) NOT NULL,
  startdate date NOT NULL,
  PRIMARY KEY (customerID)
);

insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('56351269692', 'Homer', 'O''Carrol', 'M', '1974-06-29', '73 Mayer Park', 'Lubbock', 'Texas', 'United States', '79491', '2005-05-03');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('14819809670', 'Jillian', 'Broadis', 'F', '1972-09-23', '447 Commercial Avenue', 'Fort Worth', 'Texas', 'United States', '76134', '2003-10-24');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('57972093374', 'Dody', 'Reston', 'F', '1974-05-18', '09 Sullivan Alley', 'Boise', 'Idaho', 'United States', '83732', '2011-06-27');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('16329504420', 'Corena', 'Bray', 'F', '1983-10-11', '720 Myrtle Circle', 'Pasadena', 'California', 'United States', '91199', '2007-08-22');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('07583529237', 'Currie', 'Beacock', 'M', '1993-03-23', '4 Bartillon Parkway', 'Dayton', 'Ohio', 'United States', '45440', '2003-10-02');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('02236154016', 'Joaquin', 'Speares', 'M', '1983-05-07', '65663 Thierer Circle', 'Fresno', 'California', 'United States', '93786', '2014-12-15');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('22217386106', 'Estelle', 'Ferris', 'F', '1994-03-27', '90 Duke Park', 'Bradenton', 'Florida', 'United States', '34282', '2005-05-27');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('04175065039', 'Maurits', 'Gwillyam', 'M', '1986-11-13', '8920 Mockingbird Crossing', 'Fort Myers', 'Florida', 'United States', '33994', '2013-12-23');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('10055079021', 'Donni', 'Ziemke', 'F', '1994-03-05', '5017 Mesta Trail', 'San Bernardino', 'California', 'United States', '92410', '2006-08-14');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('81070824722', 'Phaedra', 'Michele', 'F', '1992-04-29', '2 Southridge Pass', 'Richmond', 'Virginia', 'United States', '23228', '2005-11-18');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('87950811774', 'Dill', 'Alvares', 'M', '1976-02-05', '65522 Corscot Drive', 'Spring', 'Texas', 'United States', '77386', '2003-01-12');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('67323692223', 'Zeke', 'Olexa', 'M', '1972-01-19', '19 Cambridge Terrace', 'Fort Worth', 'Texas', 'United States', '76129', '2004-01-15');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('74820442163', 'Tonye', 'Goutcher', 'F', '1990-08-01', '387 Pennsylvania Court', 'Shawnee Mission', 'Kansas', 'United States', '66215', '2006-05-10');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('56162660323', 'Marita', 'Castellanos', 'F', '1999-11-26', '17 Nancy Road', 'Los Angeles', 'California', 'United States', '90005', '2001-05-04');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('57203233779', 'Dorice', 'Radbond', 'F', '1981-06-21', '2225 Warner Junction', 'Pasadena', 'California', 'United States', '91109', '2006-05-27');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('49733715573', 'Adelaide', 'Stidworthy', 'F', '1988-10-21', '7889 Jenna Hill', 'Philadelphia', 'Pennsylvania', 'United States', '19093', '2000-07-10');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('06045772220', 'Bebe', 'Larsen', 'F', '1998-04-28', '1918 Jenna Way', 'Memphis', 'Tennessee', 'United States', '38131', '2000-12-12');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('54902750774', 'Sylas', 'Quodling', 'M', '1976-08-26', '8 Comanche Crossing', 'Charlotte', 'North Carolina', 'United States', '28225', '2004-03-22');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('55224849368', 'Ashleigh', 'Stonehewer', 'F', '1985-05-20', '08983 Starling Crossing', 'Newport News', 'Virginia', 'United States', '23612', '2014-02-24');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('45738177278', 'Tiena', 'Cuttle', 'F', '1996-01-27', '1 Fallview Drive', 'Lexington', 'Kentucky', 'United States', '40581', '2001-08-24');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('09025435427', 'Crosby', 'Orrom', 'M', '1993-12-02', '3355 Prairieview Terrace', 'Washington', 'District of Columbia', 'United States', '20220', '2011-06-20');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('85855706471', 'Freemon', 'Clopton', 'M', '1994-12-25', '83 Debra Trail', 'Clearwater', 'Florida', 'United States', '33763', '2012-12-18');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('93325025573', 'Stefano', 'Gorrick', 'M', '1981-03-04', '486 Basil Plaza', 'Peoria', 'Illinois', 'United States', '61656', '2003-03-30');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('59652506532', 'Engracia', 'Surtees', 'F', '1991-08-14', '901 Myrtle Place', 'Metairie', 'Louisiana', 'United States', '70033', '2002-10-17');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('96471179033', 'Ferdinande', 'Grigori', 'F', '1976-07-12', '732 Gulseth Parkway', 'Saint Louis', 'Missouri', 'United States', '63136', '2004-02-29');
insert into customers (customerID, fname, lname, gender, birthday, addressline , city, state, country, postalcode, startdate) values ('80706279136', 'Ruy', 'Kloser', 'M', '1998-07-06', '42 Dexter Terrace', 'Richmond', 'Virginia', 'United States', '23285', '2015-09-07');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('45642332196', 'Patrice', 'Derdes', 'F', '2000-04-16', '8 Sunbrook Terrace', 'San Diego', 'California', 'United States', '92186', '2003-02-13');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('12882106938', 'Maxwell', 'Yele', 'M', '1972-08-19', '9 Manitowish Hill', 'Boulder', 'Colorado', 'United States', '80328', '2001-10-05');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('79174093967', 'Rebeka', 'Topping', 'F', '1977-11-23', '480 Towne Avenue', 'Boca Raton', 'Florida', 'United States', '33487', '2007-02-09');
insert into customers (customerID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate) values ('83604226633', 'Phaedra', 'MacTeague', 'F', '1984-12-12', '4 Coolidge Alley', 'Fresno', 'California', 'United States', '93704', '2015-10-02');

DROP TABLE IF EXISTS employees;

CREATE TABLE employees
(
  employeeID varchar(11) NOT NULL,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  gender char(1) NOT NULL,
  birthday date NOT NULL,
  addressline varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(50) NOT NULL ,
  country varchar(50) NOT NULL,
  postalcode varchar(50) NOT NULL,
  startdate date NOT NULL,
  managerID varchar(11) NULL,
  PRIMARY KEY (employeeID)
);

insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (1, 'Antony', 'Bordes', 'M', '1981-03-18', '271 Wayridge Hill', 'Spokane', 'Washington', 'United States', '99252', '2012-12-30', null);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (2, 'Claudio', 'Pandie', 'M', '1990-10-05', '02807 Beilfuss Pass', 'Tyler', 'Texas', 'United States', '75710', '2017-05-02', 1);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (3, 'Urbain', 'Noyes', 'M', '1995-09-25', '252 Myrtle Hill', 'Charlotte', 'North Carolina', 'United States', '28225', '2006-11-02', 1);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (4, 'Alice', 'Derrington', 'F', '1970-05-30', '4326 Erie Drive', 'Saint Paul', 'Minnesota', 'United States', '55146', '2013-11-26', 1);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (5, 'Kari', 'Scandrett', 'F', '1979-05-27', '8 Westridge Court', 'Clearwater', 'Florida', 'United States', '33763', '2004-10-07', 1);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (6, 'Kesley', 'Fairebrother', 'F', '1983-03-06', '9 Sycamore Pass', 'Richmond', 'California', 'United States', '94807', '2000-12-21', null);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (7, 'Mavra', 'Kordt', 'F', '1980-01-01', '976 Sutherland Center', 'Dulles', 'Virginia', 'United States', '20189', '2001-06-12', 6);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (8, 'Judith', 'Jewett', 'F', '1982-05-27', '73 Towne Hill', 'Peoria', 'Illinois', 'United States', '61629', '2017-07-09', 6);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (9, 'Darelle', 'Egel', 'F', '1974-08-01', '34 Arkansas Alley', 'Fairfield', 'Connecticut', 'United States', '06825', '2000-04-20', 6);
insert into employees (employeeID, fname, lname, gender, birthday, addressline, city, state, country, postalcode, startdate, managerID) values (10, 'Ewen', 'Lawry', 'M', '1970-05-12', '968 Stoughton Junction', 'Dallas', 'Texas', 'United States', '75353', '2002-05-11', 6);

DROP TABLE IF EXISTS videos;

CREATE TABLE videos
(
  productID varchar(11) NOT NULL,
  videoname varchar(50) NOT NULL,
  genre varchar(50) NOT NULL,
  videotype varchar(50) NOT NULL,
  quantity int(3) NOT NULL,
  rentprice decimal(10, 2) NOT NULL,
  numdiscs int(3) NOT NULL,
  mpaaratings char(5) NOT NULL,
  PRIMARY KEY (productID)
);

insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('V0J8AB81XI6', 'Footloose', 'Drama', 'DVD', 8, 5.00, 3, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('UB4JO9T7174', 'Griff the Invisible', 'Comedy|Drama|Romance', 'DVD', 17, 5.00, 3, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('Z79Z07ZTWBI', 'Shanghai Calling', 'Comedy|Drama|Romance', 'DVD', 11, 5.00, 1, 'PG');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('81ZB84RRX54', 'Way South, The (De weg naar het zuiden)', 'Documentary', 'DVD', 5, 5.00, 4, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('DHY8V2IKU7B', 'High Spirits', 'Comedy', 'DVD', 19, 5.00, 4, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('THNWOCD2VKG', 'Strayed (égarés, Les)', 'Drama|Romance', 'DVD', 19, 5.00, 4, 'PG');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('6CTVRRVAA2H', 'Dog, The', 'Documentary', 'DVD', 19, 5.00, 1, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('585VW8EUER4', 'Descendant of the Sun (Ri jie)', 'Action|Adventure|Fantasy|Sci-Fi', 'DVD', 5, 5.00, 3, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('ZZMUVPJWMN7', 'Mustalaishurmaaja', 'Drama|Romance', 'DVD', 13, 5.00, 1, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('0S9JJ97SB0O', 'Trio, The (Trio, Das)', 'Drama|Romance', 'DVD', 11, 5.00, 4, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('X637L7JIV4C', 'Crazy Mama', 'Action|Comedy', 'DVD', 11, 5.00, 2, 'PG');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('XW93VI6EQLF', 'Point Men, The', 'Action|Drama', 'DVD', 11, 5.00, 1, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('K7S7XM2MO2O', 'Black or White', 'Drama', 'DVD', 8, 5.00, 1, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('E7OSNURDK93', 'Once in the Life', 'Crime|Drama', 'DVD', 15, 5.00, 4, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('PEZK562POA4', 'Caine Mutiny, The', 'Drama|War', 'DVD', 18, 5.00, 3, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('TPWZOBETNVN', 'Turtle Diary', 'Comedy|Drama|Romance', 'DVD', 19, 5.00, 4, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('6QTE0AD8COY', 'Rock & Rule', 'Animation|Fantasy|Musical|Sci-Fi', 'DVD', 8, 5.00, 2, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('OYP9NASAQP9', 'Perfect Plan, A (Plan parfait, Un)', 'Adventure|Comedy|Romance', 'DVD', 5, 5.00, 3, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('IMGN1GDZYV2', 'Fugly!', 'Comedy', 'DVD', 17, 5.00, 1, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('NJ97WTCCFNX', 'Kon-Tiki', 'Adventure|Documentary', 'BLU-RAY', 16, 7.50, 1, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('14UHK0J6FSD', 'Mulberry Street', 'Action|Horror|Thriller', 'BLU-RAY', 13, 7.50, 1, 'NC-17');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('0HKZW756DSZ', 'Bewitched', 'Comedy|Fantasy|Romance', 'BLU-RAY', 13, 7.50, 4, 'PG');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('WT5YOHHGS2Y', 'Roommates', 'Comedy|Drama', 'BLU-RAY', 20, 7.50, 2, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('LSXK2NZEU25', 'Man of Tai Chi', 'Action|IMAX', 'BLU-RAY', 13, 7.50, 1, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('QALVWUP13IG', 'Around the World in 80 Days', 'Adventure|Comedy', 'BLU-RAY', 20, 7.50, 4, 'G');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('DHZM9ZQOPYT', 'Big Time Operators (Smallest Show on Earth, The)', 'Comedy', 'BLU-RAY', 5, 7.50, 4, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('2QSPWEIZNTN', 'Snake Pit, The', 'Drama', 'BLU-RAY', 20, 7.50, 2, 'PG-13');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('NNCDU6GJFGO', 'War, Inc.', 'Comedy|Crime|Thriller', 'BLU-RAY', 19, 7.50, 1, 'R');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('TYG16QFPTDL', 'Anniversary Party, The', 'Drama', 'BLU-RAY', 5, 7.50, 2, 'PG');
insert into videos (productID, videoname, genre, videotype, quantity, rentprice, numdiscs, mpaaratings) values ('NIXXT6E8J9I', 'Challenge, The', 'Action', 'BLU-RAY', 9, 7.50, 4, 'PG');

DROP TABLE IF EXISTS rentals;

CREATE TABLE rentals
(
  rentalID varchar(11) NOT NULL,
  customerID varchar(11) NOT NULL,
  productID varchar(11) NOT NULL,
  rentalstatus varchar(50) DEFAULT 'CHECKED OUT',
  updatedate date NOT NULL,
  KEY customerID(customerID),
  KEY productID (productID ),
  FOREIGN KEY (customerID) REFERENCES customers(customerID),
  FOREIGN KEY (productID ) REFERENCES videos(productID),
  PRIMARY KEY(rentalID)
);

insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('B7PI4M8H', '87950811774', 'ZZMUVPJWMN7', '2016-05-10', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('T4KFGG8J', '758352923', 'Z79Z07ZTWBI','2014-11-16', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('7SKIGMLY', '16329504420', 'XW93VI6EQLF','2016-05-10', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('QA8T6ENX', '14819809670', 'X637L7JIV4C','2016-05-26', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('G68FGX8P', '56162660323', 'WT5YOHHGS2Y','2016-12-13', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('4NUNUGNM', '85855706471', 'V0J8AB81XI6','2017-07-21', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('DJ0AWYM8', '45738177278', 'UB4JO9T7174','2014-01-07', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('FZMGG1OA', '45642332196', 'TYG16QFPTDL','2016-07-10', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('FVI7KIXR', '22217386106', 'TPWZOBETNVN','2015-09-15', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('01TNB37D', '93325025573', 'THNWOCD2VKG','2015-10-05', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('TS891IIW', '74820442163', '74820442163','2013-09-03', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('VF2P34TL', '96471179033', 'QALVWUP13IG','2014-05-16', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('DXJEIY1K', '4175065039', 'PEZK562POA4','2017-10-01', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('Q33W5J75', '80706279136', '80706279136','2013-03-03', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('UREKVVKN', '6045772220', 'OYP9NASAQP9','2012-11-28', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('RTMNCL26', '6045772220', 'NNCDU6GJFGO','2017-09-05', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('MS933JA4', '83604226633', 'NJ97WTCCFNX','2015-05-15', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('PFV76H5W', '56351269692', 'NIXXT6E8J9I','2017-07-22', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('W4H687WB', '67323692223', 'LSXK2NZEU25','2015-05-26', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('EK8JTG5U', '9025435427', 'PEZK562POA4','2013-07-15', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('NYXN7GFD', '54902750774', 'K7S7XM2MO2O','2014-08-28', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('4T2SLLVW', '57203233779', 'E7OSNURDK93','2015-10-07', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('R6NID96K', '57972093374', 'DHZM9ZQOPYT','2013-06-03', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('OE4LO1AL', '2236154016', 'DHY8V2IKU7B','2017-08-31', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('K8XMKKEH', '49733715573', '81ZB84RRX54','2013-08-29', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('X4EXXL3L', '55224849368', '6QTE0AD8COY','2016-07-07', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('O82SZ7X1', '59652506532', '2QSPWEIZNTN','2017-06-12', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('WT4ZK1D9', '79174093967', '14UHK0J6FSD','2013-07-21', 'RETURNED');
insert into rentals (rentalID, customerID, productID, updatedate, rentalstatus) values ('7MCNJPLG', '12882106938', '0S9JJ97SB0O','2013-09-21', 'RETURNED');

DROP TABLE IF EXISTS payments;

CREATE TABLE payments
(
  transactionID varchar(11) NOT NULL,
  employeeID varchar(11) NOT NULL,
  customerID  varchar(11) NOT NULL,
  paymentdate date NOT NULL,
  paymentMethod varchar(50) NULL,
  amount decimal(10, 2) NOT NULL,
  PRIMARY KEY (transactionID),
  FOREIGN KEY (customerID) REFERENCES customers(customerID),
  FOREIGN KEY (employeeID ) REFERENCES employees(employeeID)
);

insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'UGVQT011613', 1, '87950811774', '2016-05-10', 'CHECK', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'OOKJE966259', 2, '758352923', '2014-11-16', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'USJHA194568', 3, '16329504420', '2016-05-10', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'DTBCI673591', 4, '14819809670', '2016-05-26', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'RHLPV883246', 5, '56162660323', '2016-12-13', 'CHECK', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'FIFQT682306', 6, '85855706471', '2017-07-21', 'CHECK', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ZTMSI549924', 7, '45738177278', '2014-01-07', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'APMSJ870469', 8, '45642332196', '2016-07-10', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'PNCGE804872', 9, '22217386106', '2015-09-15', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'VPGPK473116', 10, '93325025573', '2015-10-05', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'RAYUW737663', 1, '74820442163', '2013-09-03', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ENBTB790841', 2, '96471179033', '2014-05-16', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'KEEXV498419', 3, '4175065039', '2017-10-01', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'DUJOA648579', 4, '80706279136', '2013-03-03', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'BUBMU544110', 5, '6045772220', '2012-11-28', 'CHECK', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ESTVW145828', 5, '6045772220', '2017-09-05', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'NSJNC783400', 6, '83604226633', '2015-05-15', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'HWNRN183716', 7, '81070824722', '2017-07-22', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'WPNRF629096', 8, '56351269692', '2015-05-26', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'VFWYT084453', 9, '67323692223', '2013-07-15', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'HXYTE247898', 10, '9025435427', '2014-08-28', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ILSEN551086', 1, '54902750774', '2015-10-07', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ABFJD180094', 2, '57203233779', '2013-06-03', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'FRCRQ246133', 3, '57972093374', '2017-08-31', 'CHECK', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'BUGJO688937', 4, '2236154016', '2013-08-29', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'BRPLW363203', 5, '49733715573', '2016-07-07', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'ZRFIG562143', 5, '55224849368', '2017-06-12', 'CREDIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'LULRN265772', 6, '59652506532', '2013-07-21', 'DEBIT', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'FVPIO594849', 7, '79174093967', '2013-09-21', 'CASH', 5.00);
insert into payments (transactionID, employeeID, customerID, paymentdate, paymentMethod, amount) values ( 'YUWJW694399', 8, '12882106938', '2014-06-16', 'DEBIT', 5.00);

DROP TABLE IF EXISTS checkedout;

CREATE TABLE checkedout
(
  productID varchar(11)  NOT NULL,
  employeeID varchar(11) NOT NULL,
  checkedoutDate date NOT NULL,
  KEY productID(productID),
  KEY employeeID(employeeID),
  FOREIGN KEY (employeeID) REFERENCES employees(employeeID),
  FOREIGN KEY (productID) REFERENCES videos(productID)
);

insert into checkedout (productID, employeeID, checkedoutDate) values ( 'ZZMUVPJWMN7', 1, '2016-05-10');
insert into checkedout (productID, employeeID, checkedoutDate) values ('Z79Z07ZTWBI', 4,'2014-11-16');
insert into checkedout (productID, employeeID, checkedoutDate) values ('XW93VI6EQLF', 9, '2016-05-10');
insert into checkedout (productID, employeeID, checkedoutDate) values ('X637L7JIV4C', 6, '2016-05-26');
insert into checkedout (productID, employeeID, checkedoutDate) values ('WT5YOHHGS2Y', 8,'2016-12-13');
insert into checkedout (productID, employeeID, checkedoutDate) values ('V0J8AB81XI6', 7, '2017-07-21');
insert into checkedout (productID, employeeID, checkedoutDate) values ('UB4JO9T7174', 10,'2014-01-07');
insert into checkedout (productID, employeeID, checkedoutDate) values ('TYG16QFPTDL', 3, '2016-07-10');
insert into checkedout (productID, employeeID, checkedoutDate) values ('TPWZOBETNVN', 2, '2015-09-15');
insert into checkedout (productID, employeeID, checkedoutDate) values ('THNWOCD2VKG', 5, '2015-10-05');
insert into checkedout (productID, employeeID, checkedoutDate) values ('QALVWUP13IG', 1,  '2013-09-03');
insert into checkedout (productID, employeeID, checkedoutDate) values ('PEZK562POA4', 4,  '2014-05-16');
insert into checkedout (productID, employeeID, checkedoutDate) values ('OYP9NASAQP9', 9, '2017-10-01');
insert into checkedout (productID, employeeID, checkedoutDate) values ('NNCDU6GJFGO', 6,  '2013-03-03');
insert into checkedout (productID, employeeID, checkedoutDate) values ('NJ97WTCCFNX', 8,  '2012-11-28');
insert into checkedout (productID, employeeID, checkedoutDate) values ('NIXXT6E8J9I', 6,  '2017-09-05');
insert into checkedout (productID, employeeID, checkedoutDate) values ('LSXK2NZEU25', 7,  '2015-05-15');
insert into checkedout (productID, employeeID, checkedoutDate) values ('K7S7XM2MO2O', 10, '2017-07-22');
insert into checkedout (productID, employeeID, checkedoutDate) values ('IMGN1GDZYV2', 3,'2015-05-26');
insert into checkedout (productID, employeeID, checkedoutDate) values ('E7OSNURDK93', 2, '2013-07-15');
insert into checkedout (productID, employeeID, checkedoutDate) values ('DHZM9ZQOPYT', 5, '2014-08-28');
insert into checkedout (productID, employeeID, checkedoutDate) values ('DHY8V2IKU7B', 1,'2015-10-07');
insert into checkedout (productID, employeeID, checkedoutDate) values ('81ZB84RRX54', 4, '2013-06-03');
insert into checkedout (productID, employeeID, checkedoutDate) values ('6QTE0AD8COY', 9, '2017-08-31');
insert into checkedout (productID, employeeID, checkedoutDate) values ('6CTVRRVAA2H', 6,'2013-08-29');
insert into checkedout (productID, employeeID, checkedoutDate) values ('585VW8EUER4', 8, '2016-07-07');
insert into checkedout (productID, employeeID, checkedoutDate) values ('2QSPWEIZNTN', 7, '2017-06-12');
insert into checkedout (productID, employeeID, checkedoutDate) values ('14UHK0J6FSD', 10,  '2013-07-21');
insert into checkedout (productID, employeeID, checkedoutDate) values ('0S9JJ97SB0O', 3,  '2013-09-21');
insert into checkedout (productID, employeeID, checkedoutDate) values ('0HKZW756DSZ', 2,  '2014-06-16');

