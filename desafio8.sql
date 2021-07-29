select c.CustomerName as "Nome de contato",
s.ShipperName as "Empresa que fez o envio",
o.OrderDate as "Data do pedido"
from w3schools.customers as c
inner join w3schools.orders as o on c.CustomerID = o.CustomerID and o.ShipperID < 3
inner join w3schools.shippers as s on s.ShipperID = o.ShipperID
order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
