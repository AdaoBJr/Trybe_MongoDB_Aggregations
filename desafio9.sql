select
  concat(E.firstname, ' ', E.lastname) as `Nome completo`,
  count(O.EmployeeID) as `Total de pedidos`
from w3schools.employees as E
inner join w3schools.orders as O on O.EmployeeID = E.EmployeeID
group by concat(E.firstname, ' ', E.lastname)
order by count(O.EmployeeID) asc;
