SELECT 
    ContactName AS `Nome de contato`,
    CASE
        WHEN shippers.ShipperID IN (1 , 2) THEN shippers.ShipperName
        ELSE NULL
    END AS `Empresa que fez o envio`,
    orders.OrderDate AS `Data do pedido`
FROM
    w3schools.orders
        INNER JOIN
    w3schools.customers ON customers.CustomerID = orders.CustomerID
        INNER JOIN
    w3schools.shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    shippers.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
