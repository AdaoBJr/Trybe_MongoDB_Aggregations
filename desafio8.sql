SELECT c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o INNER JOIN shippers AS s
ON o.ShipperID = s.ShipperID INNER JOIN customers AS c
ON o.CustomerID = c.CustomerID
WHERE s.ShipperID IN (1, 2)
ORDER BY 1, 2, 3;
