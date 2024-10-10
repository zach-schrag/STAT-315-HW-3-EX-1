# basic queries
SELECT Name FROM students;

SELECT * FROM students WHERE Age > 30;

SELECT Name FROM students WHERE Gender = 'Female' AND Age = 30;

SELECT Points FROM students WHERE Name = 'Alex';

INSERT INTO students (Name, Age, Gender, Points)
VALUES ('Zach', '21', 'Male', 100);

UPDATE students SET Points = Points + 10 WHERE Name = 'Basma';

UPDATE students SET Points = Points - 5 WHERE Name = 'Alex';
