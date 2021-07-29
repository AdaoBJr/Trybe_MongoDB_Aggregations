SELECT 
    p.ProductName AS 'Produto', p.p.price AS 'Preço'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = p.ProductID
WHERE
    Quantity > 80
ORDER By Produto;
