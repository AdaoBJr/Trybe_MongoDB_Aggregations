select
P.ProductName  as `Produto`,
P.Price as `Preço`
from w3schools.products as P
inner join w3schools.order_details as OD on P.ProductID = OD.ProductID
group by P.ProductID, OD.ProductID, OD.Quantity
having OD.Quantity > 80
order by `Produto`;
