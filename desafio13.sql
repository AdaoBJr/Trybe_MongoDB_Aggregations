SELECT p.productName as "Produto",
p.price as "Preço" 
FROM `w3schools`.`order_details` as od
INNER JOIN `w3schools`.`products` as p
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80
ORDER BY Produto;
