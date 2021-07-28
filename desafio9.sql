SELECT CONCAT(E.FirstName, " ", E.LastName) as `Nome completo`,
COUNT(*) as `Total de pedidos`
FROM w3schools.employees as E
INNER JOIN w3schools.orders as O on E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
