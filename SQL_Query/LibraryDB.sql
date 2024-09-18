-- CREATE TABLE Books (
-- 	Book_ID INT PRIMARY KEY,
-- 	Title VARCHAR(255) NOT NULL,
-- 	ISBN VARCHAR(255),
-- 	Publication_Year DATE,
-- 	Genre VARCHAR(20) NOT NULL,
-- 	Quantity_In_Stock INT
-- );
-- CREATE TABLE Authors (
-- 	Author_ID INT PRIMARY KEY,
-- 	First_Name VARCHAR(255) NOT NULL,
-- 	Last_Name VARCHAR(255) NOT NULL,
-- 	Birth_Date DATE,
-- 	Nationality VARCHAR(255)
-- );
-- CREATE TABLE Book_Authors (
-- 	Book_Authors_ID INT PRIMARY KEY,
-- 	Book_ID INT NOT NULL,
-- 	Author_ID INT NOT NULL
-- );

-- INSERT INTO Books (Book_ID, Title, ISBN, Publication_Year, Genre, Quantity_In_Stock)
-- VALUES
--     (1, 'tom and jerry', '978-0061120084', '1960-07-11', 'animation', 10),
--     (2, '1984', '978-0451524935', '1949-06-08', 'Dystopian', 5),
--     (3, 'fly', '978-1853260509', '1813-01-28', 'non', 8);


-- INSERT INTO Authors (Author_ID, First_Name, Last_Name, Birth_Date, Nationality)
-- VALUES
--     (1, 'toms', 'je', '1926-04-28', 'American'),
--     (2, 'George', 'Orwell', '1903-06-25', 'British'),
--     (3, 'Jane', 'Austen', '1775-12-16', 'British');

	

-- 	INSERT INTO Book_Authors (Book_Authors_ID, Book_ID, Author_ID)
-- VALUES
--     (1, 1, 1),  
--     (2, 2, 2),  
--     (3, 3, 3);


-- ALTER TABLE Books ALTER COLUMN Genre TYPE VARCHAR(40) USING Genre::VARCHAR(40);

 -- SELECT * FROM Books;

 
-- ALTER TABLE Books RENAME Publication_Year TO Publication_Date;


-- SELECT * FROM Books WHERE Title ='1984';

-- SELECT * FROM Authors WHERE Birth_Date = '1775-12-16';


-- UPDATE books
-- SET Quantity_In_Stock = Quantity_In_Stock - 3
-- WHERE Title = 'tom and jerry';

-- DELETE FROM Books
-- WHERE Publication_Date = '1813-01-28';

-- SELECT * FROM Books;

-- TRUNCATE TABLE Books;

-- TRUNCATE Authors ;

-- TRUNCATE Book_Authors ;

-- SELECT * FROM Books;

-- DROP TABLE Books;

-- DROP TABLE Authors;

-- DROP TABLE Book_Authors;






 


