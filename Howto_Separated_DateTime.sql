USE Northwind;
GO

SELECT BirthDates,BirthTimes,E.BirthDate,* FROM Employees e

GO
ALTER TABLE Employees
ADD Dates DATE
GO
ALTER TABLE Employees
DROP COLUMN Times 
GO
ALTER TABLE Employees
ADD Times TIME
GO
UPDATE Employees SET
BirthDates = LEFT(CAST(BirthDate AS DATETIME2),11) FROM Employees
GO

SELECT BirthDates,BirthTimes,E.BirthDate FROM Employees e
GO

SELECT E.BirthDate,
RIGHT(E.BirthDate,7)
FROM Employees E

SELECT BirthDate,RIGHT(CAST(BirthDate AS DATETIME2), 16) FROM Employees


UPDATE Employees SET
BirthTimes = RIGHT(CAST(BirthDate AS DATETIME2),16) FROM Employees
GO
SELECT * 
INTO EmployeesBackup
FROM Employees
GO