SELECT CONCAT(E.FirstName, ' ', E.LastName) 'Nome Completo',
COUNT(O.EmployeeID) 'Total de pedidos'
FROM w3schools.employees E
INNER JOIN w3schools.orders O
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
