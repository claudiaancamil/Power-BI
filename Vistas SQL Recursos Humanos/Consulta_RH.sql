--CREATE VIEW RH_PowerBI as
SELECT
a.BusinessEntityID,
a.StartDate as FechaContrato,
a.EndDate as FinContrato,
b.GroupName as Gerencia,
b.Name as Departamento,
c.FirstName + ' ' + c.LastName as NombreEmpleado,
d.JobTitle,
d.Gender,
d.MaritalStatus,
d.BirthDate
FROM HumanResources.EmployeeDepartmentHistory a
JOIN HumanResources.Department b on a.BusinessEntityID = b.DepartmentID
JOIN Person.Person c on a.BusinessEntityID = c.BusinessEntityID
JOIN HumanResources.Employee d on a.BusinessEntityID = d.BusinessEntityID

