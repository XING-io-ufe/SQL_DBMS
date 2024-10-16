CREATE TABLE Employees (
  Employee_ID INT PRIMARY KEY,
  First_Name VARCHAR(255),
  Last_Name VARCHAR(255),
  Department_ID INT,
  Salary DECIMAL,
  FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Departments (
  Department_ID INT PRIMARY KEY,
  Department_Name VARCHAR(255)
);

INSERT INTO Departments (Department_ID, Department_Name)
VALUES 
(1, 'Sales'),
(2, 'Marketing'),
(3, 'IT'),
(4, 'HR'),
(5, 'Finance');

INSERT INTO Employees (Employee_ID, First_Name, Last_Name, Department_ID, Salary)
VALUES 
(1, 'John', 'Doe', 1, 50.00),
(2, 'Jane', 'Smith', 2, 60.00),
(3, 'Bob', 'Johnson', 3, 70.00),
(4, 'Alice', 'Williams', 4, 55.00),
(5, 'Mike', 'Brown', 1, 58.00),
(6, 'Emily', 'Davis', 2, 62.00),
(7, 'Sarah', 'Taylor', 3, 75.00),
(8, 'Kevin', 'White', 4, 59.00),
(9, 'Lisa', 'Hall', 1, 56.00),
(10, 'Tom', 'Harris', 2, 63.00);

SELECT e.Employee_ID, e.First_Name, e.Last_Name, d.Department_Name AS Department
	FROM Employees e
INNER JOIN Departments d
	ON e.Department_ID = d.Department_ID;

SELECT e.Employee_ID, e.First_Name, e.Last_Name, d.Department_Name AS Department
	FROM Employees e
LEFT JOIN Departments d
	ON e.Department_ID = d.Department_ID;


SELECT d.Department_Name, e.Employee_ID, e.First_Name, e.Last_Name
	FROM Departments d
RIGHT JOIN Employees e
	ON d.Department_ID = e.Department_ID;

SELECT d.Department_Name, e.Employee_ID, e.First_Name, e.Last_Name
	FROM Departments d
FULL OUTER JOIN Employees e
	ON d.Department_ID = e.Department_ID;

SELECT e.First_Name, e.Last_Name, d.Department_Name AS Department
	FROM Employees e
INNER JOIN Departments d
	ON e.Department_ID = d.Department_ID WHERE e.Salary > 50;

SELECT e.Employee_ID, e.First_Name, e.Last_Name, d.Department_Name
	FROM Employees e
LEFT JOIN Departments d ON e.Department_ID = d.Department_ID AND e.Salary >= 60;

SELECT d.Department_ID, d.Department_Name, e.First_Name AS Subordinate_Name
	FROM  Departments d
RIGHT JOIN 
  	Employees e ON d.Department_ID = e.Department_ID AND d.Department_Name NOT LIKE '%IT%' AND e.Employee_ID IS NOT NULL;

SELECT d.Department_Name, e.Employee_ID, e.First_Name, e.Last_Name
	FROM Departments d
		FULL OUTER JOIN Employees e ON d.Department_ID = e.Department_ID
WHERE e.Salary > 60 OR e.Employee_ID IS NULL;


CREATE TABLE Projects (
  Project_ID INT PRIMARY KEY,
  Project_Name VARCHAR(255),
  Employee_ID INT,
  FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

INSERT INTO Projects (Project_ID, Project_Name, Employee_ID) VALUES
  (1, 'Project A', 1),
  (2, 'Project B', 2),
  (3, 'Project C', 3),
  (4, 'Project D', 4),
  (5, 'Project E', 5);

SELECT e.Employee_ID, e.First_Name, e.Last_Name, d.Department_Name, p.Project_Name
FROM Employees AS e
	JOIN Departments AS d
      ON e.Department_ID = d.Department_ID
	JOIN Projects AS p
      ON e.Employee_ID = p.Employee_ID;