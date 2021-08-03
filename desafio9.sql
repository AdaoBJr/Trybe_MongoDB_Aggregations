SELECT CONCAT(emp.FirstName, ' ', emp.LastName) "Nome completo",
COUNT(*) "Total de pedidos"
FROM w3schools.orders ord
INNER JOIN w3schools.employees emp ON ord.EmployeeID = emp.EmployeeID
GROUP BY CONCAT(emp.FirstName, ' ', emp.LastName)
ORDER BY COUNT(*);
