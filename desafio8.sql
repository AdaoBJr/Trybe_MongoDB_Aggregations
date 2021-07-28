SELECT c.ContactName 'Nome de contato', s.ShipperName 'Empresa que fez o envio', o.OrderDate 'Data do pedido'
FROM w3schools.customers c
INNER JOIN w3schools.orders o ON c.CustomerID = o.CustomerID
INNER JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
WHERE o.ShipperID IN (1,2)
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
