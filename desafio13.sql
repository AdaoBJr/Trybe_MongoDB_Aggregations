SELECT
p.ProductName as 'Produto',
p.Price as 'Preço'
FROM w3schools.products as p, w3schools.order_details as od
WHERE od.ProductID = p.ProductID AND od.Quantity > 80
ORDER BY `Produto`
;
