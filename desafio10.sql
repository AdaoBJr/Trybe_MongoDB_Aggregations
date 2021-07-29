SELECT
p.productname AS 'Produto',
MIN(od.quantity) AS 'Mínima',
MAX(od.quantity) AS 'Máxima',
ROUND(AVG(od.quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p ON p.productid = od.productid
GROUP BY od.productid
HAVING AVG(od.quantity) > 20.00
ORDER BY AVG(od.quantity), p.productname;
