SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    orders o
        INNER JOIN
    employees e ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos` ASC;
