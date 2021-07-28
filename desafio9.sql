select
concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
(select count(*) from orders where EmployeeID = e.EmployeeID ) as 'Total de pedidos'
from employees e
where (select count(*) from orders where EmployeeID = e.EmployeeID ) > 0
order by (select count(*) from orders where EmployeeID = e.EmployeeID );
