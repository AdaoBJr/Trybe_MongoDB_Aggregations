SELECT CUS.ContactName AS "Nome de contato",
SHI.ShipperName AS "Empresa que fez o envio",
ORD.OrderDate AS "Data do pedido"
FROM w3schools.customers AS CUS
INNER JOIN w3schools.orders AS ORD
ON CUS.CustomerID = ORD.CustomerID
INNER JOIN w3schools.shippers AS SHI
ON SHI.ShipperID = ORD.ShipperID
WHERE ORD.ShipperID IN (1 , 2)
ORDER BY CUS.ContactName ASC, SHI.ShipperName ASC, ORD.OrderDate ASC;
