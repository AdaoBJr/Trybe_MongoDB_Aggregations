SELECT ProductName AS Produto, MIN(Quantity) AS Mínima, MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média FROM products AS po
INNER JOIN order_details AS od ON po.ProductID = od.ProductID 
GROUP BY po.ProductID HAVING Média > 20
ORDER BY Média, Produto;
