CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
	name VARCHAR(100),
	city VARCHAR(100)
);
CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
	customer_id INT,
	product VARCHAR(100),
	amount DECIMAL(10,2),
	FOREIGN key (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Customers VALUES
(01, 'ARJUN', 'CHENNAI'),
(02, 'MAHA', 'TIRUPATI'),
(03, 'RANA', 'HYDERABAD'),
(04, 'KRISHNA', 'MUMBAI'),
(05, 'USHA', 'LADAK');
INSERT INTO Orders VALUES
(001, 01, 'WATCH', 2000.00),
(002, 02, 'KURTI', 500.50),
(003, 03, 'CAMERA', 20500.85),
(004, 04, 'BOOK', 1000.25),
(005, 05, 'SAREE', 1500.24);
SELECT * FROM Customers;
SELECT * FROM Orders;
--INNER JOIN
SELECT c.name, o.product, o.amount
from Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;
--LEFT JOIN
SELECT c.name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;
--RIGHT JOIN
SELECT c.name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
-- FULL JOIN
SELECT c.name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;






