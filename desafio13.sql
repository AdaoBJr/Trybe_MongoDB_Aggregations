SELECT PRO.ProductName AS "Produto",
PRO.Price AS "Preço"
FROM w3schools.products AS PRO
INNER JOIN w3schools.order_details AS ORD_D
ON ORD_D.ProductID = PRO.ProductID
WHERE ORD_D.Quantity > 80
ORDER BY PRO.ProductName;
