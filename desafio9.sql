SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.employees
        INNER JOIN
    w3schools.orders ON orders.EmployeeID = employees.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY `Total de pedidos` ASC;
