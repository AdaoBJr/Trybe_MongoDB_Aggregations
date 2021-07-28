SELECT 
    c.ContactName AS 'Nome do contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON c.CustomerID = o.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY c.ContactName ASC , s.ShipperName ASC , o.OrderDate ASC;
 