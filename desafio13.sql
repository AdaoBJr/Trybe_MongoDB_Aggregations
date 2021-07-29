SELECT ProductName as "Produto", Price AS "Preço"
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
WHERE Quantity > 80
GROUP BY ProductName, Price
ORDER BY ProductName;
