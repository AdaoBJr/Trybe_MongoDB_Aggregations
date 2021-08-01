SELECT cn.ContactName AS 'Nome de contato',
sn.ShipperName AS 'Empresa que fez o envio',
od.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cn
INNER JOIN w3schools.orders AS od
ON od.CustomerID = cn.CustomerID
INNER JOIN w3schools.shippers AS sn
ON sn.ShipperID = od.ShipperID
WHERE sn.ShipperName = 'Speedy Express'
OR sn.ShipperName = 'United Package'
ORDER BY cn.ContactName ASC,
sn.ShipperName ASC,
od.OrderDate ASC;
