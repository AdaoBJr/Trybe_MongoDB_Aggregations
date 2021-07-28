SELECT
  ContactName AS 'Nome de contato',
  ShipperName AS 'Empresa que fez o envio',
  OrderDate AS 'Data do pedido'
FROM orders AS o
INNER JOIN customers AS c
  ON o.CustomerID = c.CustomerID
INNER JOIN shippers AS s
  ON o.ShipperID = s.ShipperID
WHERE ShipperName = 'Speedy Express'
OR ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
