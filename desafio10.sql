SELECT
AS 'Produto',
AS 'Mínima',
AS 'Máxima',
AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_datails AS od
ON p.ProductID = od.ProductID