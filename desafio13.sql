SELECT 
t1.ProductName AS 'Produto',
t1.Price AS 'Preço'
FROM w3schools.products t1
JOIN w3schools.order_details AS t2 ON t2.ProductID = t1.ProductID
WHERE
t2.Quantity > 80
ORDER BY Produto;
