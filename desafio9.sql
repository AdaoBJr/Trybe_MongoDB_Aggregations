SELECT
CONCAT(employees.FirstName,' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
-- remember to not put a space after the count IT IS GONNA BREAK --
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON employees.EmployeeID = orders.EmployeeID
GROUP BY  `Nome completo`
ORDER BY  `Total de pedidos`;
