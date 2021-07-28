SELECT ContactName AS 'Nome de contato',
ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM customers AS c
INNER JOIN orders AS o
ON c.CustomerID = o.CustomerID
INNER JOIN shippers AS s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
