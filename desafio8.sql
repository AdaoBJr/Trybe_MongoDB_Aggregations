select 
C.ContactName as `Nome de contato`,
SH.ShipperName as `Empresa que fez o envio`,
O.OrderDate as `Data do pedido`
from w3schools.customers as C
inner join w3schools.orders as O on C.CustomerID = O.CustomerID
inner join w3schools.shippers as SH on O.ShipperID = SH.ShipperID
where SH.ShipperName in('Speedy Express', 'United Package')
order by C.ContactName asc, SH.ShipperName asc, O.OrderDate;
