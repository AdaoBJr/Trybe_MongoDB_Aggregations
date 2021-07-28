SELECT 
    concat(FirstName, ' ', LastName) as 'Nome de contato',
    count(*) as 'Total de pedidos'
FROM
    orders o
INNER JOIN employees e
ON e.EmployeeID = o.EmployeeID
group by `Nome de contato`
order by `Total de pedidos`;
