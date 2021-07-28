select * from w3schools.employees;
select * from w3schools.orders;
select CONCAT(FirstName, ' ', LastName) as 'Nome completo', COUNT(ord.EmployeeID) 'Total de pedidos' from w3schools.employees as emplo
inner join w3schools.orders as ord on ord.EmployeeID = emplo.EmployeeID
group by ord.EmployeeID
order by `Total de pedidos`;
