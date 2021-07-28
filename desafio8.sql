select 
customers.ContactName as 'Nome de contato',
shippers.ShipperName as 'Empresa que fez o envio',
orders.OrderDate as 'Data do pedido'
from w3schools.orders as orders
inner join w3schools.shippers as shippers
on orders.ShipperID = shippers.ShipperID
inner join w3schools.customers as customers
on orders.CustomerID = customers.CustomerID
where shippers.ShipperName = 'Speedy Express' or shippers.ShipperName = 'United Package'
order by `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC