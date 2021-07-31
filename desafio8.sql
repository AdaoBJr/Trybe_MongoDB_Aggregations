-- SELECT CONCAT(wemployees.FirstName,' ', wemployees.LastName) AS `Nome de contato`,
-- shippers.ShipperName AS `Empresa que fez o envio`,
-- orders.OrderDate AS `Data do pedido`
-- FROM w3schools.orders AS orders
-- JOIN w3schools.shippers AS shippers
-- ON shippers.ShipperID = orders.ShipperID
-- JOIN w3schools.employees AS wemployees
-- ON wemployees.EmployeeID = orders.EmployeeID
-- WHERE shippers.ShipperName IN (1, 2)
-- ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;

SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.customers AS customers
JOIN w3schools.orders AS orders
ON customers.CustomerID = orders.CustomerID
JOIN w3schools.shippers AS shippers
ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
