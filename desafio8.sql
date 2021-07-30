SELECT 
    c.ContactName AS 'Nome de contato',
    sh.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders AS o
        INNER JOIN
    customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    shippers AS sh ON o.ShipperID = sh.ShipperID
WHERE
    sh.ShipperID <= 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
