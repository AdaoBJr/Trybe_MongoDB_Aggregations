SELECT 
    concat(FirstName, ' ', LastName) as 'Nome completo',
    count(*) as 'Total de pedidos'
FROM
    orders o
INNER JOIN employees e
ON e.EmployeeID = o.EmployeeID
group by `Nome completo`
order by `Total de pedidos`;
