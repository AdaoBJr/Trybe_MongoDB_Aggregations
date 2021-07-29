SELECT concat(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees as e
INNER JOIN
w3schools.orders AS o
ON o.employeeID = e.employeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.EmployeeID);
