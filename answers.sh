SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(10, 'Nabigha', '24', 'F', 500);
UPDATE Students SET Points = 500 WHERE Name='Basma';
UPDATE Students SET Points = 100 WHERE Name='Alex';