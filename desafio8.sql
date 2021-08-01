SELECT c.ContactName `Nome de contato`, id.ShipperName `Empresa que fez o envio`, o.OrderDate `Data do pedido` FROM orders o INNER JOIN customers c ON c.CustomerID = o.CustomerID INNER JOIN shippers id ON id.ShipperID = o.ShipperID WHERE o.ShipperID IN ('1','2') ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;