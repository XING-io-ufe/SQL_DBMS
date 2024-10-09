-- CREATE TABLE Books (
--     Book_ID INT PRIMARY KEY,
--     Title VARCHAR(255) NOT NULL,
--     ISBN VARCHAR(20) UNIQUE,
--     Published_Year DATE NOT NULL,
--     Genre VARCHAR(50),
--     Quantity_In_Stock INT NOT NULL,
--     Price INT NOT NULL,
-- 	   Author_ID INT NOT NULL
-- );

-- CREATE TABLE Authors (
--   Author_ID INT PRIMARY KEY,
--   First_Name VARCHAR(50) NOT NULL,
--   Last_Name VARCHAR(50) NOT NULL,
--   Birth_Year DATE NOT NULL,
--   Nationality VARCHAR(50)
-- );

-- INSERT INTO Books (Book_ID, Title, ISBN, Published_Year, Genre, Quantity_In_Stock, Price, Author_ID)
-- VALUES
-- (1, 'The Great Gatsby', '978-3-16-148410-0', '2022-01-15', 'Fiction', 50, 25, 3),
-- (2, 'To Kill a Mockingbird', '978-3-16-148410-1', '2021-09-20', 'Fiction', 30, 20, 2),
-- (3, 'The Catcher in the Rye', '978-3-16-148410-2', '2022-05-10', 'Fiction', 25, 22, 5),
-- (4, '1984', '978-3-16-148410-3', '2021-11-18', 'Dystopian', 15, 18, 4),
-- (5, 'Pride and Prejudice', '978-3-16-148410-4', '2022-02-28', 'Romance', 35, 28, 1),
-- (6, 'To the Lighthouse', '978-3-16-148410-5', '2022-07-05', 'Modernist', 20, 24, 2),
-- (7, 'Moby-Dick', '978-3-16-148410-6', '2021-08-12', 'Adventure', 28, 26, 3),
-- (8, 'The Hobbit', '978-3-16-148410-7', '2022-04-03', 'Fantasy', 22, 30, 4),
-- (9, 'One Hundred Years of Solitude', '978-3-16-148410-8', '2021-12-22', 'Magical Realism', 18, 32, 5),
-- (10, 'Brave New World', '978-3-16-148410-9', '2022-03-17', 'Dystopian', 32, 29, 1);


-- INSERT INTO Authors (Author_ID, First_Name, Last_Name, Birth_Year, Nationality)
-- VALUES
--   (1, 'Jane', 'Austen', '1775-12-16', 'British'),
--   (2, 'George', 'Orwell', '1903-06-25', 'British'),
--   (3, 'Virginia', 'Woolf', '1882-01-25', 'British'),
--   (4, 'Gabriel', 'García Márquez', '1927-03-06', 'Colombian'),
--   (5, 'J.K.', 'Rowling', '1965-07-31', 'British');


-- ALTER TABLE Books 
-- ADD CONSTRAINT fk_AuthorID
-- FOREIGN KEY (Author_ID) REFERENCES Authors (Author_ID);

-- CREATE VIEW BookDetails AS
-- SELECT 
--     b.Title,
--     CONCAT(a.First_Name, ' ', a.Last_Name) AS AuthorFullName
-- FROM 
--     Books b
-- JOIN
--     Authors a ON a.Author_ID = b.Author_ID;

-- SELECT * FROM BookDetails;


-- CREATE OR REPLACE VIEW BookDetails AS
-- SELECT 
--     b.Title,
--     (
--         SELECT CONCAT(a.First_Name, ' ', a.Last_Name)
--         FROM Authors a
--         WHERE a.Author_ID = b.Author_ID
--     ) AS AuthorFullName
-- FROM Books b
-- WHERE b.Published_Year > '2022-01-01';


-- DROP VIEW BookDetails;

-- CREATE INDEX idx_lastname ON Authors(Last_Name);
-- CREATE INDEX idx_isbn ON Books(ISBN);


-- SELECT Title FROM Books WHERE Books.Author_ID IN( SELECT Author_ID FROM Authors WHERE Birth_Year < '1970-01-01');


-- UPDATE Books SET Genre = 'Classic' WHERE Author_ID IN
-- ( SELECT Author_ID FROM Authors WHERE Birth_Year < '1900-01-01');
-- SELECT * FROM Books;

-- SELECT a.First_Name, a.Last_Name, 
-- ( SELECT COUNT(*) FROM Books WHERE Author_ID = a.Author_ID)
-- AS BookCount FROM Authors a;

-- INSERT INTO Authors (Author_ID, First_Name, Last_Name, Birth_Year, Nationality)
-- VALUES (6, 'Mark', 'Twain', '1835-11-30', 'American');
-- INSERT INTO Books (Book_ID, Title, Published_Year, Genre, Quantity_In_Stock, Price, Author_ID)
-- VALUES (11, 'New Language', '2023-01-01', 'Classic', 50, 30, (SELECT Author_ID FROM Authors WHERE First_Name = 'Mark' AND Last_Name = 'Twain'));



