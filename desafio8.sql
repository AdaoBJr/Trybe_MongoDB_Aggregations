SELECT
c.ContactName as "Nome de contato",
s.ShipperName as "Empresa que fez o envio",
o.OrderDate as "Data do pedido"
FROM
w3schools.customers as c
INNER JOIN w3schools.orders as o
INNER JOIN w3schools.shippers as s
ON s.ShipperID = o.ShipperID and o.CustomerID = c.CustomerID
WHERE 
(s.ShipperID = 1 OR s.ShipperID = 2)
ORDER BY 
`Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
;
