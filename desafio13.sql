select prd.ProductName AS 'Produto',
prd.Price AS 'Preço'
from w3schools.products AS prd
INNER JOIN w3schools.order_details AS ods
ON prd.ProductID = ods.ProductID
WHERE ods.Quantity > 80
ORDER BY Produto;
