--CREATE VIEW Inventario_PowerBI as
SELECT 
a.ModifiedDate as FechaEntrada,
a.ProductID,
b.Name as Producto,
d.ProductModelID,
d.Name as ProductLine,
c.LocationID,
c.Name as Location,
a.Quantity
FROM Production.ProductInventory a
JOIN Production.Product b on a.ProductID = b. ProductID
JOIN Production.Location c on a.LocationID = c.LocationID
JOIN Production.ProductModel d on b.ProductModelID = d.ProductModelID
