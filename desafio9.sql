SELECT CONCAT(e.FirstName ,' ',e.LastName) as 'Nome completo',
COUNT(o.OrderID) as 'Total de pedidos'
FROM w3schools.employees as e
INNER JOIN w3schools.orders as o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
