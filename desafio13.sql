SELECT ProductName AS `Produto`, Price AS `Preço`
FROM w3schools.products P, w3schools.order_details O
WHERE P.ProductID = O.ProductID AND O.Quantity > 80
ORDER BY ProductName;
