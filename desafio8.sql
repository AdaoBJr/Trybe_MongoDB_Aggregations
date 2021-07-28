SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.customers C
INNER JOIN w3schools.orders O
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers S
ON O.ShipperID = S.ShipperID
WHERE S.ShipperID = 1 OR S.ShipperID = 2
ORDER BY ContactName, ShipperName, OrderDate;
