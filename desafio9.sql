SELECT CONCAT(EMP.FirstName, ' ', EMP.LastName) AS "Nome de contato",
COUNT(*) AS "Total de pedidos"
FROM w3schools.employees AS EMP
INNER JOIN w3schools.orders AS ORD
ON ORD.EmployeeID = EMP.EmployeeID
GROUP BY ORD.EmployeeID
ORDER BY COUNT(*);
