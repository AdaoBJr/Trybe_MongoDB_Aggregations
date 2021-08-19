SELECT
c.ContactName "Nome de contato",
s.ShipperName "Empresa que fez o envio",
o.OrderDate "Data do pedido"
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID
INNER JOIN shippers s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName IN ("Speedy Express", "United Package")
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;