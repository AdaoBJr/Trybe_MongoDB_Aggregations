SELECT 
    ContactName as 'Nome de contato',
    ShipperName as 'Empresa que fez o envio',
    OrderDate as 'Data do pedido'
FROM
    orders o
INNER JOIN customers c
INNER JOIN shippers AS s
ON c.CustomerID = o.CustomerID AND s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
