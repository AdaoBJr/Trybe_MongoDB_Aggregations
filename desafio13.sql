SELECT 
    ProductName AS 'Produto',
    Price AS 'Preço'
FROM
    w3schools.products AS pro
INNER JOIN w3schools.order_details AS orDe ON pro.ProductID = orDe.ProductID
WHERE orDe.Quantity > 80
ORDER BY `Produto`;
