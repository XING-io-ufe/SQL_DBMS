-- CREATE TABLE Customers (
-- 	Customer_ID INT PRIMARY KEY,
-- 	First_Name VARCHAR(50),
-- 	Last_Name VARCHAR(50),
-- 	Email VARCHAR UNIQUE,
-- 	Country VARCHAR
-- );

-- CREATE TABLE Orders(
-- 	Order_ID INT PRIMARY KEY,
-- 	Customer_ID INT,
-- 	Product_Name VARCHAR NOT NULL,
-- 	Quantity INT NOT NULL,
-- 	Order_Date DATE NOT NULL,
-- 	FOREIGN KEY(Customer_ID)
-- 	REFERENCES Customers (Customer_ID)
-- );

-- INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Email, Country)
-- VALUES 
-- (1, 'John', 'Doe', 'john.doe@example.com', 'USA'),
-- (2, 'Jane', 'Doe', 'jane.doe@example.com', 'Canada'),
-- (3, 'Bob', 'Smith', 'bob.smith@example.com', 'UK'),
-- (4, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Australia'),
-- (5, 'Mike', 'Brown', 'mike.brown@example.com', 'Germany');

-- INSERT INTO Orders (Order_ID, Customer_ID, Product_Name, Quantity, Order_Date)
-- VALUES 
-- (1, 1, 'Product A', 2, '2022-01-01'),
-- (2, 1, 'Product B', 3, '2022-01-05'),
-- (3, 2, 'Product C', 1, '2022-01-10'),
-- (4, 3, 'Product D', 4, '2022-01-15'),
-- (5, 1, 'Product E', 2, '2022-02-01'),
-- (6, 2, 'Product F', 3, '2022-02-05'),
-- (7, 4, 'Product G', 1, '2022-02-10'),
-- (8, 5, 'Product H', 4, '2022-02-15'),
-- (9, 1, 'Product I', 2, '2022-03-01'),
-- (10, 3, 'Product J', 3, '2022-03-05');


--  CREATE VIEW CustomerDetails AS
-- SELECT 
--     CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
--     c.Country
-- FROM 
--     Customers c;

-- SELECT * FROM CustomerDetails;

-- CREATE OR REPLACE VIEW CustomerDetails AS
-- SELECT 
--     CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
--     c.Country
-- FROM 
--     Customers c
-- WHERE c.Country = 'Germany';

-- SELECT * FROM CustomerDetails;


-- DROP VIEW CustomerDetails;

-- CREATE INDEX idx_lastname ON Customers(Email);

-- INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Email, Country)
-- VALUES (6, 'Mark', 'Twain', 'mark.twain@yahoo.com', 'American');

-- INSERT INTO Orders (Order_ID, Customer_ID, Product_Name, Quantity, Order_Date)
-- VALUES (11, (SELECT Customer_ID FROM Customers WHERE First_Name = 'Mark' AND Last_Name = 'Twain'), 'Product K', 9, '2023-01-01');

-- SELECT * FROM Orders;


-- SELECT 
--     c.First_Name, 
--     c.Last_Name, 
--     c.Country,
--     (
--         SELECT COUNT(o.Order_ID) 
--         FROM Orders o 
--         WHERE o.Customer_ID = c.Customer_ID
--     ) AS Number_of_Orders
-- FROM 
--     Customers c
-- WHERE 
--     c.Country = 'USA'; 


-- UPDATE Orders 
-- SET Quantity = 10
-- WHERE Customer_ID IN (
--     SELECT c.Customer_ID
--     FROM Customers c
--     WHERE c.First_Name = 'Bob' AND c.Last_Name = 'Smith'
-- );

-- SELECT * FROM Orders;

-- DELETE FROM Orders
-- WHERE Customer_ID IN (
--     SELECT c.Customer_ID
--     FROM Customers c
--     WHERE c.Country = 'Australia'
-- );
