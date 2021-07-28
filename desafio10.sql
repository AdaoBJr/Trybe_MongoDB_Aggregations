SELECT 
    ProductName as Produto,
    MIN(Quantity) as 'Mínima',
    MAX(Quantity) as 'Máxima',
    ROUND(AVG(Quantity),2) AS 'Média'
FROM
    order_details od
INNER JOIN products p
ON p.ProductID = od.ProductID
group by p.ProductName
HAVING `Média` > 20.00
ORDER BY `Média`, Produto;
