



--create new table


CREATE TABLE EmployeeErrors (
EmployeeID VARCHAR(50)
,FirstName VARCHAR(50)
,LastName VARCHAR(50)
)


--add data into employeeErrors table

INSERT INTO EmployeeErrors VALUES 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


SELECT *
FROM EmployeeErrors

-- practice using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

SELECT EmployeeID, RTRIM(employeeID) AS IDRTRIM
FROM EmployeeErrors 

SELECT EmployeeID, LTRIM(employeeID) AS IDLTRIM
FROM EmployeeErrors 

	
--  Replace


SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors


--  Substring

SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3), SUBSTRING(err.LastName,1,3), SUBSTRING(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)
	and SUBSTRING(err.LastName,1,3) = SUBSTRING(dem.LastName,1,3)



--  UPPER and lower

SELECT firstname, LOWER(firstname)
FROM EmployeeErrors

SELECT Firstname, UPPER(FirstName)
FROM EmployeeErrors