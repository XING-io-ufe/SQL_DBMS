-- CREATE TABLE Category (
-- 	CategoryID INT PRIMARY KEY,
-- 	CategoryName VARCHAR(100) NOT NULL
-- );


-- SELECT * FROM Category;

-- CREATE TABLE Products (
-- 	ProductsID INT PRIMARY KEY,
-- 	ProductsName VARCHAR(255) NOT NULL,
-- 	CategotyID INT,
-- 	Price DECIMAL(10, 2) NOT NULL,
-- 	Quantity VARCHAR(100)
-- );

-- ALTER TABLE Category ADD SupplierID INT;

-- ALTER TABLE Products ALTER COLUMN Quantity TYPE DECIMAL(12, 2) USING Quantity::DECIMAL(12, 2);

-- SELECT Quantity FROM Products;

-- INSERT INTO  Category (CategoryID, CategoryName, SupplierID) 
-- VALUES 
-- 	(1, 'Electronics', 1),
-- 	(2, 'Clothing', 1);

-- SELECT * FROM Category;

-- SELECT * FROM Products;

-- INSERT INTO Products (ProductsID, ProductsName, CategotyID, Price, Quantity)
-- VALUES
-- 	(1, 'ProducstA', 1, 10.99, 50),
-- 	(2, 'ProducstB', 2, 19.99, 30),
-- 	(3, 'ProducstC', 1, 15.49, 20),
-- 	(4, 'ProducstD', 2, 24.99, 40);

-- SELECT * FROM Products WHERE CategotyID = 2;

-- SELECT * FROM Products WHERE Price > 15

-- UPDATE Products
-- SET Quantity = Quantity - 10 
-- WHERE ProductsName = 'ProducstC';

-- SELECT * FROM Products;

-- DELETE FROM Products
-- WHERE ProductsName = 'ProducstB';

-- TRUNCATE TABLE Products;

-- TRUNCATE TABLE Category;

-- DROP TABLE Products;

-- DROP TABLE Category;






