SELECT 
    prod.ProductName AS `Produto`,
    MIN(od.Quantity) AS Mínima,
    MAX(od.Quantity) AS Máxima,
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = prod.ProductID
GROUP BY Produto
HAVING Média > 20.00 -- I have no idea why the alias worked here since the select clause shouldn't be executed before having clause
ORDER BY Média , Produto;
