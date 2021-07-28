SELECT 
    prod.ProductName AS 'Produto', prod.Price AS 'Preço'
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS orde ON orde.ProductID = prod.ProductID
WHERE
    orde.Quantity > 80
ORDER BY prod.ProductName;
