SELECT CONCAT(emplo.FirstName, ' ', emplo.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM orders
INNER JOIN employees AS emplo ON orders.EmployeeID = emplo.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(*);
