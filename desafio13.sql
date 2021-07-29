SELECT P.ProductName 'Produto', P.Price
FROM w3schools.products P 
INNER JOIN w3schools.order_details OD
ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 80
ORDER BY `Produto`;
