SELECT
CONCAT(e.FirstName, ' ', e.LastName) 'Nome de contato',
COUNT(*) 'Total de pedidos'
FROM w3schools.orders o
JOIN w3schools.employees e ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome de contato`
ORDER BY `Total de pedidos`;
