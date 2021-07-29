SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome Completo',
COUNT(ord.OrderID) AS 'Total de pedidos'
FROM employees AS emp
INNER JOIN orders AS ord
ON ord.EmployeeID = emp.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
