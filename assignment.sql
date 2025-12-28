-- 1. Create Tables
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept_id INT,
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- 2. Insert Data
INSERT INTO Departments VALUES (101, 'IT'), (102, 'HR'), (103, 'Sales');

INSERT INTO Employees VALUES 
(1, 'Naveen', 70000, 101, 'Bangalore'),
(2, 'Karthik', 50000, 101, 'Bangalore'),
(3, 'Ram', 45000, 102, 'Chennai'),
(4, 'Vinay', 80000, 103, 'Bangalore'),
(5, 'Seetha', 55000, 102, 'Pune');

-- 3. Logical Operators (AND, OR, NOT)
-- AND: Find Bangalore employees with salary > 60000
SELECT * FROM Employees 
WHERE city = 'Bangalore' AND salary > 60000;

-- OR: Find employees in Chennai OR Pune
SELECT * FROM Employees 
WHERE city = 'Chennai' OR city = 'Pune';

-- NOT: Find employees NOT in Bangalore
SELECT * FROM Employees 
WHERE NOT city = 'Bangalore';

-- 4. Arithmetic Operators (SUM, AVG, COUNT)
-- SUM: Total salary paid by the company
SELECT SUM(salary) AS total_payroll FROM Employees;

-- AVG: Average salary of all employees
SELECT AVG(salary) AS average_salary FROM Employees;

-- COUNT: Total number of employees
SELECT COUNT(emp_id) AS total_employees FROM Employees;

-- 5. Order By Queries
-- Sort employees by salary in descending order
SELECT name, salary FROM Employees 
ORDER BY salary DESC;

-- Sort employees alphabetically by name
SELECT * FROM Employees 
ORDER BY name ASC;