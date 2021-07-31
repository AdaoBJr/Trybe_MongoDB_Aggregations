select
P.ProductName as `Produto`,
min(OD.Quantity) as `Mínima`,
max(OD.Quantity) as `Máxima`,
round(avg(OD.Quantity), 2) as `Média`
from w3schools.products as P
inner join w3schools.order_details as OD on P.ProductID = OD.ProductID
group by P.ProductID
having `Média` > 20
order by `Média`, `Produto`;
