SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    orders o
        INNER JOIN
    shippers s ON o.ShipperID = s.ShipperID
        INNER JOIN
    customers c ON o.CustomerID = c.CustomerID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
