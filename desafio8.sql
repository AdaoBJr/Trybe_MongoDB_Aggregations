SELECT 
C.CustomerName as `Nome de contato`
, 
S.ShipperName as `Empresa que fez o envio`
, 
O.OrderDate as `Data do pedido` 
FROM w3schools.customers AS C 
INNER JOIN w3schools.orders AS O on C.CustomerID = O.CustomerID 
INNER JOIN w3schools.shippers AS S on O.ShipperID = S.ShipperID 
WHERE S.ShipperName IN ("Speedy Express"
, "United Package") 
ORDER BY `Nome de contato`
, `Empresa que fez o envio`
, `Data do pedido`; 
