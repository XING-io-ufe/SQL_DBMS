-- CREATE TABLE Studentds(
-- 	Student_ID INT PRIMARY KEY,
-- 	First_Name VARCHAR NOT NULL,
-- 	Last_Name VARCHAR NOT NULL,
-- 	Date_of_Birth DATE NOT NULL,
-- 	Email VARCHAR  UNIQUE,
-- 	GPA DECIMAL DEFAULT(0.0)
-- );

-- SELECT * FROM Studentds;

-- CREATE TABLE Courses (
-- 	Course_ID INT PRIMARY KEY,
-- 	Course_Name VARCHAR(100) NOT NULL,
-- 	Instructor VARCHAR(100) NOT NULL,
-- 	Schedule VARCHAR(50),
-- 	Credits INT NOT NULL
-- );


-- SELECT * FROM Courses;

-- INSERT INTO studentds(student_id, first_name, last_name, date_of_birth, email, gpa)
-- 	VALUES (1, 'John', 'Doe', '1995-03-15', 'john.doe@example.com', 3.5),
-- 	(2, 'Jane', 'Smith', '1997-08-22', 'jane.doe@example.com', 3.8),
-- 	(3, 'Micheal', 'Jonhson', '1998-05-10', 'micheal.doe@example.com', 3.2),
-- 	(4, 'Emily', 'Davis', '1996-12-05', 'emily.doe@example.com', 3.7),
-- 	(5, 'William', 'Brown', '1999-02-20', 'william.doe@example.com', 3.4);

-- INSERT INTO Courses (Course_ID, Course_Name, Instructor, Schedule, Credits)
-- VALUES
--     (1, 'Introduction to SQL', 'Prof. Brown', 'MWF 10:00 AM', 3),
--     (2, 'Data Analysis with Python', 'Prof. Wilson', 'TTH 2:00 PM', 4),
--     (3, 'Web devolopment foundamentals', 'Prof. Davis', 'TTH 9:30 AM', 3),
--     (4, 'Machine Learning basics', 'Prof. Smith', 'MWF 1:30 PM', 4),
--     (5, 'Database DEsign', 'Prof. Wilson', 'MWF 11:30 AM', 3);

-- SELECT First_Name, Last_Name FROM Studentds WHERE GPA >=3.0;

-- SELECT * FROM Courses WHERE Credits > 3 ORDER BY Course_Name ASC;

-- SELECT AVG(GPA) AS Average_GPA FROM Studentds WHERE GPA >2.5;

-- SELECT Course_Name FROM Courses WHERE Course_Name LIKE '%Database%';

-- SELECT * FROM Courses WHERE Credits BETWEEN 3 AND 5;

-- SELECT Instructor, COUNT(*) AS Course_Count FROM Courses GROUP BY Instructor HAVING COUNT(*) > 1;

-- ALTER TABLE Courses ADD CONSTRAINT FK_instructor FOREIGN KEY (Instructor) REFERENCES studentds (Student_ID);

-- SELECT * FROM Courses;
