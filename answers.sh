# Basic Queries

# Get all the names of students in the database
SELECT Name FROM students;

# Get all the data of students above 30 years old
SELECT * FROM students WHERE Age > 30;

# Get the names of the females who are 30 years old
SELECT Name FROM students WHERE Gender = 'Female' AND Age = 30;

# Get the number of Points of Alex 5.
SELECT Points FROM students WHERE Name = 'Alex';

# Add yourself as a new student (your name, your age...)
INSERT INTO students (Name, Age, Gender, Points)
VALUES ('Zach', '21', 'Male', 100);

# Increase the points of Basma because she solved a new exercise
UPDATE students SET Points = Points + 10 WHERE Name = 'Basma';

# Decrease the points of Alex because he's late today
UPDATE students SET Points = Points - 5 WHERE Name = 'Alex';

# Layla
# Create the table
CREATE TABLE graduates (
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
);

# Copy Layal's data from students to graduates
INSERT INTO graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students WHERE Name = 'Layal';

# Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates SET Graduation = '08/09/2018' WHERE Name = 'Layal';

# Remove Layal's record from students
DELETE FROM students WHERE Name = 'Layal';


# Joins
# Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT employees.Name AS EmployeeName, companies.Name AS CompanyName, companies.Date AS CompanyDate
FROM employees
JOIN companies ON employees.Company = companies.Name;

# Find the name of employees that work in companies made before 2000.
SELECT employees.Name
FROM employees
JOIN companies ON employees.Company = companies.Name
WHERE companies.Date < 2000;
# Marc and Maria are the results

# Find the name of company that has a graphic designer.
SELECT employees.Company
FROM employees
WHERE employees.Role = 'Graphic Designer';
# Snapchat is the company that has a Graphic Designer


# Count and Filter
# Find the person with the highest number of points in students
SELECT Name, Points
FROM students
ORDER BY Points DESC
LIMIT 1;
# Robert

# Find the average of points in students
SELECT AVG(Points) AS AveragePoints
FROM students;
# 292.5

# Find the number of students that have 500 points
SELECT COUNT(*) AS NumberOfStudents
FROM students
WHERE Points = 500;
# 2

# Find the names of students that contains 's'
SELECT Name
FROM students
WHERE Name LIKE '%s%';
# Basma and Hasan

# Find all students based on the decreasing order of their points
SELECT *
FROM students
ORDER BY Points DESC;
