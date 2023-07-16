SELECT        
Sales.SalesOrderDetail.SalesOrderID AS OrderID, 
Sales.SalesOrderDetail.OrderQty AS Cantidad, 
Sales.SalesOrderDetail.ProductID, 
Production.Product.Name AS Producto, 
Sales.SalesOrderDetail.UnitPrice AS PrecioUnitario, 
Sales.SalesOrderDetail.UnitPriceDiscount AS Descuento, 
Sales.SalesOrderDetail.LineTotal AS Total, 
Sales.SalesOrderHeader.Status, 
Sales.SalesOrderHeader.OrderDate AS Fecha, 
Sales.SalesOrderHeader.CustomerID, 
Sales.SalesOrderHeader.SalesPersonID, 
Person.Person.FirstName + ' ' + Person.Person.LastName AS Vendedor,
Sales.SalesTerritory.TerritoryID, 
Sales.SalesTerritory.Name AS Region
FROM  Sales.SalesOrderDetail 
INNER JOIN Sales.SalesOrderHeader ON Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID 
INNER JOIN Production.Product ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID 
INNER JOIN  Sales.SalesTerritory ON Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID AND Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID AND Sales.SalesOrderHeader.TerritoryID = Sales.SalesTerritory.TerritoryID 
LEFT OUTER JOIN Person.Person ON Sales.SalesOrderHeader.SalesPersonID = Person.Person.BusinessEntityID
