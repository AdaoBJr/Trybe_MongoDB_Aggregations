SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM employees AS e
JOIN orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos` ASC;
