SELECT 
CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
COUNT (*) AS 'Total de pedidos'
FROM employees AS e
INNER JOIN orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
