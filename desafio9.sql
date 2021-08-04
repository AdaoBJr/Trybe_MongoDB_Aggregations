-- select * from w3schools.employees;
-- select * from w3schools.shippers;
-- select * from w3schools.order_details;
-- select * from w3schools.orders;
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
