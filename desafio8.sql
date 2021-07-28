SELECT 
C.ContactName 'Nome de contato',
S.ShipperName 'Empresa que fez o envio', O.OrderDate 'Data do pedido'
FROM
orders O
INNER JOIN
customers C ON C.CustomerID = O.CustomerID
INNER JOIN 
shippers S
ON S.ShipperID = O.ShipperID AND ShipperName in ("Speedy Express", "United Package" )
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
