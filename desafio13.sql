SELECT 
    ProductName AS 'Produto', price AS 'Preço'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = p.ProductID
WHERE
    Quantity > 80;
    