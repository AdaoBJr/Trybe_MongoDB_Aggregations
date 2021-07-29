SELECT
  c.ContactName AS 'Nome de contato',
  s.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
JOIN w3schools.shippers AS s
  ON s.ShipperId = o.ShipperId
JOIN w3schools.customers AS c
  ON c.CustomerID = o.CustomerID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
