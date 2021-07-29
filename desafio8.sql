SELECT
c.ContactName AS 'Nome de contato',
s.shippername AS 'Empresa que fez o envio',
o.orderdate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON o.customerid = c.customerid
INNER JOIN w3schools.shippers AS s ON s.shipperid = o.shipperid
WHERE o.shipperid IN (1, 2)
ORDER BY c.contactname, s.shippername, o.orderdate;
