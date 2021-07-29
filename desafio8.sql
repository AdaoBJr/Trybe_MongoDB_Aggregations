SELECT cts.ContactName AS 'Nome de contato',
shi.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM customers AS cts
INNER JOIN orders AS ord
ON cts.CustomerID = ord.CustomerID
INNER JOIN shippers AS shi
ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperName = "Speedy Express" OR shi.ShipperName = "United Package"
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
