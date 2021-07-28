SELECT
t3.ContactName 'Nome de contato',
t2.ShipperName 'Empresa que fez o envio',
t1.OrderDate 'Data do pedido'
FROM w3schools.orders AS t1
JOIN w3schools.shippers AS t2 ON t1.ShipperID = t2.ShipperID
JOIN w3schools.customers AS t3 ON t1.CustomerID = t3.CustomerID
WHERE
t2.ShipperName IN('Speedy Express', 'United Package')
ORDER BY t3.ContactName, t2.ShipperName, t1.OrderDate;
