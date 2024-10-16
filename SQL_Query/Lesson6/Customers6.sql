CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_Name VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (Customer_ID) 
	REFERENCES Customers(Customer_ID)
);

INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Email)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Alice', 'Smith', 'alice.smith@example.com'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com'),
(4, 'Emma', 'Brown', 'emma.brown@example.com'),
(5, 'David', 'Clark', 'david.clark@example.com'),
(6, 'Olivia', 'Lee', 'olivia.lee@example.com'),
(7, 'James', 'Miller', 'james.miller@example.com'),
(8, 'Sophia', 'White', 'sophia.white@example.com'),
(9, 'Daniel', 'Evans', 'daniel.evans@example.com'),
(10, 'Ava', 'Allen', 'ava.allen@example.com');


INSERT INTO Orders (Order_ID, Customer_ID, Product_Name, Quantity)
VALUES
(1, 3, 'Product A', 5),
(2, 1, 'Product B', 3),
(3, 2, 'Product C', 7),
(4, 4, 'Product D', 2),
(5, 5, 'Product E', 6),
(6, 2, 'Product F', 4),
(7, 1, 'Product G', 8),
(8, 6, 'Product H', 3),
(9, 7, 'Product I', 5),
(10, 9, 'Product J', 4);

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
INNER JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
RIGHT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
FULL OUTER JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
INNER JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Quantity > 5;

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Quantity >= 6;


SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
RIGHT JOIN Orders o ON c.Customer_ID = o.Customer_ID AND c.First_Name <> 'John';

SELECT c.First_Name, c.Last_Name, o.Order_ID, o.Product_Name
FROM Customers c
FULL OUTER JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Quantity <= 5;

