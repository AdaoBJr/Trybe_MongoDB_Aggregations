SELECT pr.ProductName 'Produto',
pr.Price 'Preço'
FROM (SELECT ProductID
FROM w3schools.order_details
WHERE Quantity > 80) AS od
INNER JOIN w3schools.products pr ON od.ProductID = pr.ProductID
ORDER BY pr.ProductName;
