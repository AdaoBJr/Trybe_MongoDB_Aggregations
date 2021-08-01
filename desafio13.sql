SELECT prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM w3schools.products AS prod,
w3schools.order_details AS ord
WHERE prod.ProductID = ord.ProductID
AND ord.Quantity > 80
ORDER BY prod.ProductName ASC;
