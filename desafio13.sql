SELECT
p.ProductName AS Produto,
p.Price AS Preço
FROM w3schools.order_details od
INNER JOIN w3schools.products p ON p.ProductID = od.ProductID
WHERE od.Quantity > 80.00
GROUP BY p.ProductID
ORDER BY Produto;
