
/*Taylor Smith
  ITCS 3160
  Assignment 3
  */
USE PRETTYPRINTS;

/*
1.
*/ 
SELECT Customer_name, customer_add, customer_city, customer_state, customer_zip
FROM Customers
;

/*
2.
*/ 
SELECT customer_name, customer_phone
FROM Customers
WHERE customer_state = 'GA'
;

/*
3.
*/ 
SELECT customer_name, customer_zip
FROM Customers
WHERE customer_state = 'NC' OR customer_state = 'SC' 
;

/*
4.
*/ 
SELECT Items.title, Items.artist, Orders.order_date, Orders.ship_date
FROM Orders, Items, Orderline
WHERE Orders.order_id = Orderline.order_id 
AND Items.item_id = Orderline.item_id 
;

/*
5.
*/ 
SELECT item_id, title, artist, unit_price, on_hand
FROM Items
ORDER BY unit_price
;

/*
6.
*/ 
SELECT item_id, title, artist, unit_price, on_hand
FROM Items
WHERE unit_price > 100
;
/*
7.
*/ 
SELECT item_id, title, artist, unit_price, on_hand
FROM Items
WHERE on_hand > 300
;
/*
8.
*/ 
SELECT title, unit_price, (unit_price*2) AS retail_price
FROM Items
;

/*
9.
*/ 
SELECT Customers.customer_name, Customers.customer_phone
FROM Customers, Orders
WHERE Customers.customer_id = Orders.customer_id
AND (Orders.order_date) LIKE '2014-00-00'
;
/*
10.
*/ 
SELECT Items.artist, SUM(Orderline.order_qty)
FROM Items, Orderline
WHERE Orderline.item_id = Items.item_id
;  

/*
11.
*/ 
SELECT title
FROM Items
WHERE unit_price BETWEEN 40 AND 100
;

/*
12.
*/ 

/*
13.
*/ 

/*
14.
*/ 
SELECT Customer_state, COUNT(customer_id)
FROM Customers
WHERE customer_state
;