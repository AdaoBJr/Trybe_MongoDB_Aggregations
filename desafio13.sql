SELECT 
    p.ProductName AS 'Produto', p.price AS 'Preço'
FROM
    w3schools.order_details AS od
        INNER JOIN
    w3schools.products AS p ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING MAX(od.Quantity) > 80
ORDER BY p.ProductName;
