select concat(employees.FirstName,' ',employees.LastName) as 'Nome completo',
count(concat(employees.FirstName,' ',employees.LastName)) as 'Total de pedidos'
from w3schools.orders as orders
inner join w3schools.employees as employees
on orders.EmployeeID = employees.EmployeeID
group by `Nome completo`
order by `Total de pedidos` ASC
