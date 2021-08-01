SELECT p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM w3schools.order_details o
LEFT JOIN w3schools.products p
    ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY  p.ProductName;
