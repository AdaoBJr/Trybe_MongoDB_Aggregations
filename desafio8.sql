SELECT c.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS sh
on sh.ShipperID = o.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
