SELECT CONCAT(t1.FirstName, ' ', t1.LastName)
'Nome completo', COUNT(*) 'Total de pedidos'
FROM w3schools.employees 't1'
INNER JOIN w3schools.orders 't2' ON t1.EmployeeID = t2.EmployeeID
GROUP BY 1 ORDER BY 2 ASC;
