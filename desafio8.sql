SELECT ContactName AS `Nome de contato`,
ShipperName AS "Empresa que fez o envio",
OrderDate AS  "Data do pedido"
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS SH
ON O.ShipperID = SH.ShipperID
WHERE ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, ShipperName, OrderDate;
