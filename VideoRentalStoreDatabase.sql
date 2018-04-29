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


