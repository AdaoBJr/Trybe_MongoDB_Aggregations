SELECT 
    p.ProductName AS Produto,
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    round((SUM(od.Quantity) / COUNT(od.Quantity)), 2)AS 'Média'
FROM
    w3schools.order_details AS od
        INNER JOIN
    w3schools.products AS p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
having
    SUM(od.Quantity) / COUNT(od.Quantity) > 20
ORDER BY SUM(od.Quantity) / COUNT(od.Quantity) ASC , p.ProductName;
