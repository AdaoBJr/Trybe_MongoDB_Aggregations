SELECT concat(e.FirstName, ' ', e.LastName) AS 'Nome Completo',
COUNT(o.EmployeeID) AS 'Total de Pedidos'
FROM w3schools.employees as e
INNER JOIN
w3schools.orders AS o
ON o.employeeID = e.employeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.EmployeeID);
