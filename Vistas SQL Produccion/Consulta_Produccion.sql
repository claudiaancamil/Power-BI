--CREATE VIEW Produccion_PowerBI as
SELECT
a.WorkOrderID,
a.StartDate as FechaInicio,
a.EndDate as FechaFin,
a.DueDate as FechaVencimiento,
d.LocationID,
d.Name as Location,
a.ProductID,
b.Name as Producto,
e.ProductModelID,
e.Name as ProductModel,
a.OrderQty as Cantidad,
a.StockedQty as Almacenado,
b.StandardCost as CostoStandar,
b.ListPrice as PrecioLista
FROM Production.WorkOrder a
JOIN Production.Product b on a.ProductID = b.ProductID
JOIN Production.WorkOrderRouting c on a.WorkOrderID = c.WorkOrderID
JOIN Production.Location d on c.LocationID = d.LocationID
JOIN Production.ProductModel e on b.ProductModelID = e.ProductModelID

