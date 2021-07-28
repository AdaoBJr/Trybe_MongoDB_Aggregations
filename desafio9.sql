select
	concat(e.FirstName, ' ', e.LastName) as 'Nome Completo',
    count(*) as 'Total de pedidos'
from w3schools.orders as o
inner join w3schools.employees as e on o.EmployeeID = e.EmployeeID
group by o.EmployeeID
order by count(o.OrderID)
    