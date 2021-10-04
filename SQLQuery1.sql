USE Northwind;

SELECT 
	p.ProductName producto,
	c.CategoryName categoria
FROM
	Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;


--Crear una vista llamada listadoProductos que muestre
--el nombre del producto, categoria y proveedor
--ordenados por nombre de categoria

CREATE VIEW listadoProductos
AS
SELECT p.ProductName AS 'Producto', 
c.CategoryName AS 'Categoria',
p.SupplierID AS 'Proveedor'
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

SELECT
Producto, Categoria, Proveedor FROM listadoProductos ORDER BY Categoria;


--Modificar la vista anterior de tal manera que
--muestre los productos que esten o no inlcuidos en las ordenes
--muestre: nombre producto, nombre categoria, y el order id

ALTER VIEW listadoProductos
AS
SELECT p.ProductName AS 'Producto', 
c.CategoryName AS 'Categoria',
o.OrderID AS 'Orden'
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
LEFT JOIN [Order Details] o
ON o.OrderID = o.OrderID;

SELECT
Producto, Categoria, Orden FROM listadoProductos ORDER BY Categoria;


--Modificar la vista anterior utilizando full join

