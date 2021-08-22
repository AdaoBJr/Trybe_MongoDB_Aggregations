SELECT p.ProductName "Produto", p.Price "Preço"
FROM order_details d INNER JOIN products p ON p.ProductID = d.ProductID
WHERE d.Quantity > 80
ORDER BY `Produto`;
