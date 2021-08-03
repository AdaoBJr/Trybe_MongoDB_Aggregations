select p.productName "Produto",
MIN(od.quantity) as "Mínima",
max(od.quantity) as "Máxima",
round(avg(od.quantity),2) as "Média"
FROM `w3schools`.`order_details` as od
inner join `w3schools`.`orders` as o
on o.OrderID = od.OrderID
inner join `w3schools`.`products` as p
on p.ProductID = od.ProductID
group by od.ProductID
having Média > 20
order by Média, Produto;
