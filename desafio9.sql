SELECT 
    CONCAT(em.FirstName, ' ', em.LastName) AS 'Nome completo',
    COUNT(CONCAT(em.FirstName, ' ', em.LastName)) AS 'Total de pedidos'
FROM
    w3schools.employees AS em
        INNER JOIN
    orders AS ord ON ord.EmployeeID = em.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
