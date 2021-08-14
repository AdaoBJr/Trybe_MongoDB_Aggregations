SELECT
ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM
w3schools.shippers AS s
INNER JOIN
w3schools.orders AS o
ON
s.ShipperID = o.ShipperID
INNER JOIN
w3schools.customers AS c
ON
o.CustomerID = c.CustomerID
WHERE
ShipperName IN ('Speedy Express','United Package')
ORDER BY
`Nome de contato`,
`Empresa que fez o envio`,
`Data do pedido`;