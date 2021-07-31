SELECT CONCAT(wemployees.FirstName,' ', wemployees.LastName) AS `Nome de contato`,
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
JOIN w3schools.shippers AS shippers
ON shippers.ShipperID = orders.ShipperID
JOIN w3schools.employees AS wemployees
ON wemployees.EmployeeID = orders.EmployeeID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
