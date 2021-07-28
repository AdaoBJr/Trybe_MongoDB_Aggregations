SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
    COUNT(orde.EmployeeID) AS `Total de pedidos`
FROM
    w3schools.employees AS emp
        INNER JOIN
    w3schools.orders AS orde ON orde.EmployeeID = emp.EmployeeID
GROUP BY orde.EmployeeID
ORDER BY `Total de pedidos`;
