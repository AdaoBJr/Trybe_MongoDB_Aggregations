SELECT 
CONCAT(E.FirstName, ' ', E.LastName) 'Nome completo',
COUNT(*) 'Total de pedidos'
FROM
employees E
INNER JOIN
orders O ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
