SELECT c.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.shippers  AS sh
INNER JOIN w3schools.orders AS o
ON o.ShipperID = sh.ShipperID
INNER JOIN w3schools.customers as c
ON c.CustomerID = o.CustomerID
WHERE sh.ShipperID IN(1,2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
