select CustomerName as 'Nome de contato', ship.ShipperName as 'Empresa que fez o envio', ord.OrderDate as 'Data do pedido' from w3schools.customers as cust
inner join w3schools.orders AS ord on ord.CustomerID = cust.CustomerID
inner join w3schools.shippers AS ship on ship.ShipperID = ord.ShipperID
where ship.ShipperName = 'Speedy Express' or ship.ShipperName = 'United Package'
order by `Nome de contato`, `Empresa que fez o envio`;
