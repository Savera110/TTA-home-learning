-- 1st Task from sql 1
CREATE DATABASE person;

CREATE TABLE person_details(
person_id INT NOT NULL,
first_name VARCHAR (20) NOT NULL, 
last_name VARCHAR (20), 
address VARCHAR (20) NOT NULL,
city DECIMAL (8,2) NOT NULL, 
PRIMARY KEY (person_id)
);

EXPLAIN person_details;

-- 1st,2nd,3rd and 4rth tasks from sql 2

CREATE DATABASE ordering_system;

CREATE TABLE customers(
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(100),
ContactName VARCHAR(100),
Address VARCHAR(100), 
City VARCHAR(80),	
PostalCode VARCHAR(10),
Country VARCHAR(40)
);

EXPLAIN customers;

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, "Toby Flunderson", "James", "Jammy Dogdger Avenue", "Scranton", "12209", "USA"),
(2, "Leslie Knope", "James", "Custard Cream Boulevard", "Pawnee", "05021", "USA"),
(3, "Dwight Schrute", "James", "Wagon Wheel Place", "Scranton", "122541", "USA"),
(4, "Donna Meagle", "James", "Leibniz Lane", "Pawnee", "05020", "USA"),
(5, "April Ludgate", "James", "Digestive Road", "Pawnee", "01756", "USA"),
(6, "Stanley Hudson", "James", "Hobnob Street", "Scranton","122554", "USA")
;
SELECT * FROM customers;

CREATE TABLE orders(
OrderID INT NOT NULL PRIMARY KEY,
CustomerID INT, 
ItemID INT NOT NULL,
ItemName VARCHAR(80)
);

EXPLAIN orders;

INSERT INTO orders (CustomerID, OrderID, ItemID, ItemName, ProductPrice)
VALUES
(6, 5021545, 32174524,  "Toaster",  17.99),
(3, 5021546, 45142548, "Set of 3 Nested Tables", 105.99),
(3, 5021547, 87413547, "Electric Toothbrush", 45.99),
(1, 5021548, 24586596, "4 Person Tent", 220.99),
(4, 5021549, 47512543, "Upright Fan", 41.99),
(5, 5021550, 73519487, "Henry Hoover", 111.99)
;
SELECT * FROM orders;

-- 5th task from sql 2
UPDATE orders
SET ProductPrice = 200.11
WHERE OrderID = 5021549;

SELECT * FROM orders;

-- 6th task from sql2
DELETE FROM orders 
WHERE CustomerID ='5';

-- 7th task from sql 2
SELECT customers.CustomerName , orders.OrderID
FROM customers
FULL JOIN orders
ON customers.CustomerID = orders.CustomerID;

-- 8th task from sql 2
SELECT * FROM orders 
WHERE CustomerID = 3;

-- 9th and 10th task fom sql 2
SELECT ItemID, ItemName FROM orders
ORDER BY ItemID;

-- 11th task from sql 2
SELECT * FROM orders
WHERE ProductPrice between 55 and 110;











