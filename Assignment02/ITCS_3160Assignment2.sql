CREATE DATABASE PRETTYPRINTS;
USE PRETTYPRINTS;
CREATE TABLE Customers
(customer_id CHAR(4) PRIMARY KEY,
customer_name CHAR(20),
customer_add CHAR(15), 
customer_city CHAR(15),
customer_state CHAR(2),
customer_zip CHAR(5),
customer_phone CHAR(12) );

CREATE TABLE Items
(item_id CHAR(4) PRIMARY KEY,
title CHAR(30),
artist CHAR(25),
unit_price DECIMAl(5,0),
on_hand DECIMAL(4,0) );

CREATE TABLE Orders
(order_id CHAR(4) PRIMARY KEY,
customer_id CHAR(4),
order_date CHAR(10),
ship_date CHAR(10) );

CREATE TABLE Orderline 
(order_id CHAR(4) PRIMARY KEY,
item_id CHAR(3),
order_qty INT(4) );

INSERT INTO Customers
VALUE 
('1000', 'Cora Blanca', '1555 Seminole Ct.', 'Charlotte', 'NC', '28210', '704/552.1810');

INSERT INTO Customers
VALUE 
('1100', 'Yash Reed', '878 Madison Ave.', 'Greensboro', 'NC', '27407', '336/316-5434');

INSERT INTO Customers
VALUE 
('1200', 'John Mills', '4200 Olive Ave.', 'Columbia', 'SC', '29206', '803/432.6225');

INSERT INTO Customers
VALUE 
('1300', 'David Cox', '608 Old Post Rd.', 'Decatur', 'GA', '30030', '404/243.7379');

INSERT INTO Customers
VALUE 
('1400', 'Tina Evans', '235 Easton Ave.', 'Jacksonville', 'FL', '32221', '904/992-7234');

INSERT INTO Customers
VALUE 
('1500', 'Will Allen', '2508 W. Shaw Rd.', 'Raleigh', 'NC', '27542', '919/809.2545');

INSERT INTO Customers
VALUE 
('1600', 'James Boyd', '200 Pembury Ln.', 'Columbia', 'SC', '29206', '803/432-7600');

INSERT INTO Customers
VALUE 
('1700', 'Will Parsons', '4990 S. Pine St.', 'Raleigh', 'NC', '27545', '919/355/0034');

INSERT INTO Customers
VALUE 
('1800', 'Walter Kelly', '1200 Lillet St.', 'Columbia', 'SC', '29206', '803/432-1987');

INSERT INTO Customers
VALUE 
('1900', 'Ann Damian', '7822 N. Ridge Rd.', 'Jacksonville', 'FL', '32216', '904/725-4672');

INSERT INTO Customers
VALUE 
('2000', 'Grace Hull', '4090 Caldweld St.', 'Charlotte', 'NC', '28205', '704/365.7655');

INSERT INTO Customers
VALUE 
('2100', 'Jane Brown', '3320 W. Main St.', 'Charlotte', 'NC', '28210', '704/372/9000');

INSERT INTO Customers
VALUE 
('2200', 'Betty Draper', '1600 Sardis Rd.', 'Sarasota', 'FL', '32441', '918/941-9121');

INSERT INTO Items
VALUE
('100', 'Under the Sun', 'Donald Arely', 46.80, 340);

INSERT INTO Items
VALUE
('200', 'Dark Lady', 'Keith Morris', 120.99, 250);

INSERT INTO Items
VALUE
('300', 'Happy Days', 'Andrea Reid', 78.00, 210);

INSERT INTO Items
VALUE
('350', 'Top of the Mountain', 'Janice Jones', 110.00, 290);

INSERT INTO Items
VALUE
('400', 'Streets from Old', 'Sharon Brune', 123.00, 320);

INSERT INTO Items
VALUE
('450', 'The Hunt', 'Walter Alford', 39.99, 390);

INSERT INTO Items
VALUE
('600', 'Rainbow Row', 'Judy Ford', 46.00, 350);

INSERT INTO Items
VALUE
('700', 'Skies Above', 'Alexander Wilson', 98.00, 275);

INSERT INTO Items
VALUE
('800', 'The Seas and Moon', 'Susan Beeler', 67.81, 235);

INSERT INTO Items
VALUE
('850', 'Greek Isles', 'Benjamin Caudle', 76.00, 300);

INSERT INTO Orders
VALUE
('1','1200','2013-10-23','2013-10-28');

INSERT INTO Orders
VALUE
('2','1500','2013-10-30','2013-11-03');

INSERT INTO Orders
VALUE
('3','1500','2013-10-30','2013-11-03');

INSERT INTO Orders
VALUE
('4','2100','2013-11-09','2013-11-14');

INSERT INTO Orders
VALUE
('5','1600','2013-11-15','2013-11-20');

INSERT INTO Orders
VALUE
('6','1900','2013-12-15','2013-12-19');

INSERT INTO Orders
VALUE
('7','2200','2013-12-18','2013-12-22');


INSERT INTO Orders
VALUE
('8','1600','2013-12-20','2013-12-22');


INSERT INTO Orders
VALUE
('9','1000','2014-01-18','2014-01-23');

INSERT INTO Orders
VALUE
('10','2200','2014-01-31','2014-02-04');

INSERT INTO Orders
VALUE
('11','1500','2014-02-01','2014-02-06');

INSERT INTO Orders
VALUE
('12','1400','2014-02-27','2014-03-02');

INSERT INTO Orders
VALUE
('13','1100','2014-03-10','2014-03-15');

INSERT INTO Orders
VALUE
('14','1400','2014-03-14','2014-03-19');

INSERT INTO Orderline
VALUE
('1','800',2);

INSERT INTO Orderline
VALUE
('1','600',1);

INSERT INTO Orderline
VALUE
('2','700',3);

INSERT INTO Orderline
VALUE
('2','300',2);

INSERT INTO Orderline
VALUE
('3','850',1);

INSERT INTO Orderline
VALUE
('4','200',4);

INSERT INTO Orderline
VALUE
('4','100',1);

INSERT INTO Orderline
VALUE
('4','850',1);

INSERT INTO Orderline
VALUE
('5','450',1);

INSERT INTO Orderline
VALUE
('6','800',2);

INSERT INTO Orderline
VALUE
('7','300',2);

INSERT INTO Orderline
VALUE
('7','600',2);

INSERT INTO Orderline
VALUE
('8','100',1);

INSERT INTO Orderline
VALUE
('9','100',3);

INSERT INTO Orderline
VALUE
('10','450',6);

INSERT INTO Orderline
VALUE
('10','600',8);

INSERT INTO Orderline
VALUE
('10','200',4);

INSERT INTO Orderline
VALUE
('11','700',2);

INSERT INTO Orderline
VALUE
('12','300',3);

INSERT INTO Orderline
VALUE
('12','700',4);

INSERT INTO Orderline
VALUE
('13','200',2);

INSERT INTO Orderline
VALUE
('13','600',10);

INSERT INTO Orderline
VALUE
('13','450',4);

INSERT INTO Orderline
VALUE
('14','700',8);

INSERT INTO Orderline
VALUE
('14','200',6);

INSERT INTO Orderline
VALUE
('14','800',4);

INSERT INTO Orderline
VALUE
('14','450',2);











