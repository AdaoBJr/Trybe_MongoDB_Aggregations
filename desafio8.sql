SELECT customers.ContactName AS 'Nome de contato', shippers.ShipperName AS 'Empresa que fez o envio', orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customers
INNER JOIN w3schools.shippers AS shippers
INNER JOIN w3schools.orders AS orders
ON shippers.ShipperID = orders.ShipperID
ON orders.CustomerID = customers.CustomerID
WHERE shippers.ShipperName = 'Speedy Express'
OR shippers.ShipperName = 'United Package'
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate ASC;
