SELECT 
P.ProductName as `Produto`,
MIN(OD.Quantity) as `Mínima`,
MAX(OD.Quantity) as `Máxima`,
AVG(OD.Quantity) as `Média`
FROM w3schools.order_details as OD
INNER JOIN w3schools.products as P on P.ProductID = OD.ProductID
GROUP BY `Produto`
ORDER BY `Média`, `Produto`; 
