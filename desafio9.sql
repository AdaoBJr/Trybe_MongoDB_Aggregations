SELECT 
    CONCAT(table_employees.FirstName,
            ' ',
            table_employees.LastName) 'Nome completo',
    COUNT(*) 'Total de pedidos'
FROM
    w3schools.employees table_employees
        INNER JOIN
    w3schools.orders table_orders ON table_employees.EmployeeID = table_orders.EmployeeID
GROUP BY table_orders.EmployeeID
ORDER BY `Total de pedidos`;
