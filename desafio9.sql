SELECT
CONCAT(wemployees.FirstName,' ', wemployees.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS wemployees
JOIN w3schools.orders AS orders
ON orders.EmployeeID = wemployees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos`;
