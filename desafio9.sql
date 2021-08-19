SELECT
CONCAT(FirstName, " ", LastName) "Nome completo",
COUNT(OrderID) "Total de pedidos"
FROM orders o
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos`;
