SELECT CONCAT(EM.FirstName, ' ', LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS EM
INNER JOIN w3schools.orders AS O ON EM.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
