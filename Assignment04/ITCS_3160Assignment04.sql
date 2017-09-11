USE PRETTYPRINTS;
/*
1.
*/
CREATE VIEW `Under_100` AS
SELECT Items.item_id, Items.title, Items.artist, Items.unit_price, order_qty
FROM Items, Orderline
WHERE Items.unit_price < 100 ;

/*
2.
*/
CREATE VIEW `Allen` AS
SELECT Customers.customer_id, Customers.customer_name, Customers.customer_phone, Items.title, Items.artist
FROM Orderline, Items, Customers, Orders
WHERE Orderline.order_id = Orders.order_id AND Items.item_id = Orderline.item_id 
AND Customers.customer_id = Orders.customer_id
;

/*
3.
*/

CREATE VIEW `orders_` AS
SELECT Items.item_id, Items.title, Items.artist, Items.unit_price, Orderline.order_qty
FROM Orderline, Items, Orders
WHERE Orders.order_date BETWEEN '2014-01-01' AND '2014-02-28';

/*
4.
*/
CREATE OR REPLACE VIEW `zip_27` AS
SELECT Customers.customer_name, Customers.customer_phone, Items.title, Items.artist, Orders.ship_date
FROM Customers, Items, Orders, Orderline
WHERE Customers.customer_zip LIKE '27%' 
AND Customers.customer_id = Orders.customer_id 
AND Orderline.order_id = Orders.order_id 
AND Items.item_id = Orderline.item_id ;
/*
5.
*/

CREATE INDEX customer_id
ON Customers (customer_id);

CREATE INDEX name_
ON Customers (customer_name);

CREATE INDEX shipped
ON Orders (customer_id, ship_date);

/*
6.
*/
DROP INDEX name_
;

/*
7. Legal Values Integrity
*/

CHECK (Items.unit_price > 35);

/*
8.
*/

FOREIGN KEY (customer_id) REFERENCES Orders;
FOREIGN KEY (item_id) REFERENCES Orderline;


/*
9.
*/

ALTER TABLE Items
ADD itemType CHAR(1);

/*
10.
*/


UPDATE Items
SET itemsType = 'M'
WHERE Items.title = 'Skies Above';

/*
11.
*/
ALTER TABLE Items
MODIFY artist CHAR(30);

/*
12.
*/

DROP TABLE Orders;
