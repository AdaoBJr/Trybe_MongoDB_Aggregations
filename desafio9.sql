SELECT 
	CONCAT(c.FirstName, ' ', c.LastName) AS 'Nome completo',
    COUNT(o.OrderID) AS 'Total de pedidos'
FROM w3schools.orders o
INNER JOIN w3schools.employees c
    ON o.EmployeeID = c.EmployeeID
GROUP BY CONCAT(c.FirstName, ' ', c.LastName)
ORDER BY COUNT(o.OrderID);
