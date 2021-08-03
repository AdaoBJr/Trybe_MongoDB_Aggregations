SELECT 
    customer.ContactName AS 'Nome de contato',
    shipper.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS customer
        INNER JOIN
    w3schools.orders AS orders ON customer.CustomerID = orders.CustomerID
        INNER JOIN
    w3schools.shippers AS shipper ON orders.ShipperID = shipper.ShipperID
WHERE
    orders.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
