SELECT c.ContactName as 'Nome de contato', s.ShipperName as 'Empresa que fez o envio', o.OrderDate as 'Data do pedido'
FROM w3schools.customers as c
INNER JOIN w3schools.orders as o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers as s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
