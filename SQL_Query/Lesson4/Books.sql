CREATE TABLE Books (
	Book_ID INT PRIMARY KEY,
	Title VARCHAR NOT NULL,
	ISBN VARCHAR(100) UNIQUE,
	Published_YEAR DATE NOT NULL,
	Genre VARCHAR,
	Quantity_In_Stock INT NOT NULL,
	Price INT NOT NULL
);

CREATE TABLE Authors(
	Author_ID INT PRIMARY KEY,
	First_Name VARCHAR NOT NULL,
	Last_Name VARCHAR NOT NULL,
	Birth_Year DATE NOT NULL,
	Nationality VARCHAR
);

INSERT INTO Books (Book_ID, Title, ISBN, Published_YEAR, Genre, Quantity_In_Stock, Price)
VALUES
    (1, 'ADAMS', '9780061120084', '1960-07-11', 'Fiction', 10, 20),
    (2, '1984', '9780451524935', '1949-06-08', 'Dystopian', 5, 15),
    (3, 'The Great Gatsby', '9780743273565', '1925-04-10', 'Classic', 8, 18),
    (4, 'Pride and Prejudice', '9780486280511', '1813-01-28', 'Romance', 12, 22),
    (5, 'The Catcher in the Rye', '9780316769174', '1951-07-16', 'Young Adult', 7, 19);

INSERT INTO Authors (Author_ID, First_Name, Last_Name, Birth_Year, Nationality)
VALUES
    (1, 'Harper', 'Lee', '1926-04-28', 'American'),
    (2, 'George', 'Orwell', '1903-06-25', 'British'),
    (3, 'F. Scott', 'Fitzgerald', '1896-09-24', 'American'),
    (4, 'Jane', 'Austen', '1775-12-16', 'British'),
    (5, 'J.D.', 'Salinger', '1919-01-01', 'American');
	
SELECT * FROM Books WHERE Published_YEAR <= '2010-01-01';

SELECT FIRST_NAME, LAST_NAME FROM Authors WHERE Birth_year < '1990-01-01' ORDER BY First_Name ASC;

SELECT COUNT(*) FROM Books WHERE Price > 10 ;

SELECT Title FROM Books WHERE Title LIKE 'T%';

SELECT Title FROM Books WHERE Published_YEAR BETWEEN '1924-01-01' AND '1961-01-01';

UPDATE Books SET Genre='Young Adult' WHERE Book_ID =1;
SELECT * FROM Books;

SELECT Genre, COUNT(*) FROM Books GROUP BY Genre HAVING COUNT(*) > 1;

ALTER TABLE Books ADD CONSTRAINT FK_Authors_ID FOREIGN KEY(Book_ID) REFERENCES Authors(Author_ID);

SELECT * FROM Books;
