SELECT p.ProductName as 'Produto', p.Price as 'Preço'
FROM w3schools.products as p
INNER JOIN w3schools.order_details as od ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
