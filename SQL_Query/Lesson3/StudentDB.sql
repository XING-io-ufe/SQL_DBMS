-- CREATE TABLE Students (
-- 	Student_ID INT PRIMARY KEY,
-- 	First_Name VARCHAR(255) NOT NULL,
-- 	Last_Name VARCHAR(255) NOT NULL,
-- 	Date_of_Birth TIMESTAMP,
-- 	Email VARCHAR NOT NULL,
-- 	Phone VARCHAR(8) NOT NULL
-- );

-- SELECT * FROM Students;

-- CREATE TABLE Courses (
-- 	Course_ID INT PRIMARY KEY,
-- 	Course_Name VARCHAR(255),
-- 	Instructor VARCHAR(255),
-- 	Schedule VARCHAR(100),
-- 	Credits INT
-- );

-- SELECT * FROM Courses;

-- CREATE TABLE Registrations (
-- 	Registration_ID INT PRIMARY KEY,
-- 	Student_ID 	INT NOT NULL,
-- 	Course_ID INT NOT NULL,
-- 	Date_of_Registration DATE
-- );

-- ALTER TABLE Students ALTER COLUMN Phone TYPE INT USING Phone::INT;

-- SELECT * FROM Students;

-- ALTER TABLE Students RENAME Email TO Email_acc;

-- INSERT INTO Students (Student_ID, First_Name, Last_Name, Date_of_Birth, Email_acc, Phone)
-- VALUES
-- 	(1, 'John', 'May', '2023-04-03', 'johnmay37@gmail.com', 881484),
-- 	(2, 'jack', 'cor', '2024-12-03', 'jeff67@gmail.com', 88675484),
-- 	(3, 'elf', 'staff', '2021-12-03', 'hello12@gmail.com', 8321484);

-- INSERT INTO Registrations (Registration_ID, Student_ID, Course_ID, Date_of_Registration)
-- VALUES
--     (1, 101, 1, '2022-01-10'),
--     (2, 102, 2, '2022-01-15'),
--     (3, 101, 3, '2022-02-01'),
--     (4, 103, 1, '2022-01-20'),
--     (5, 102, 3, '2022-02-15');
	
-- SELECT * FROM Students WHERE Students_ID = 3;

-- INSERT INTO Courses (Course_ID, Course_Name, Instructor, Schedule, Credits)
-- VALUES
--     (1, 'Computer Science', 'Doe', '10:00-11:00', 2),
--     (2, 'Algorithms', 'Smith', '2:00-3:30', 2),
--     (3, 'Database Systems', 'Bob', '1:00-2:00', 3);

-- SELECT * FROM Courses WHERE Credits = 3;

-- UPDATE Students
-- SET First_Name = 'Mongolia'
-- WHERE Student_ID = 1;

-- DELETE FROM Courses
-- WHERE Credits = 3;




-- TRUNCATE TABLE students;

-- TRUNCATE Registrations ;

-- TRUNCATE Courses ;


-- SELECT * FROM Students;

-- DROP TABLE students;

-- DROP TABLE Registrations;

-- DROP TABLE Courses;









