SELECT 
c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM customers AS c
INNER JOIN  orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN shippers AS s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperID IN (1,2)
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
