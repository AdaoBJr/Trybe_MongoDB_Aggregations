SELECT ProductName AS `Produto`, Price AS `Preço`
FROM products AS p
JOIN order_details AS od
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
