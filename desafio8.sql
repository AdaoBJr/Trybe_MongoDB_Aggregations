SELECT cus.ContactName "Nome de contato",
shi.ShipperName "Empresa que fez o envio",
ord.OrderDate "Data do pedido"
FROM w3schools.orders ord
INNER JOIN w3schools.customers cus ON ord.CustomerID = cus.CustomerID
INNER JOIN w3schools.shippers shi ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperName IN ("Speedy Express", "United Package")
ORDER BY cus.ContactName, shi.ShipperName, ord.OrderDate;
