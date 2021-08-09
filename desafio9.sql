SELECT
  CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome de completo',
  COUNT(orders.EmployeeID) as 'Total de pedidos'
FROM
  w3schools.orders as orders
  INNER JOIN w3schools.employees AS employees on employees.EmployeeID = orders.EmployeeID
GROUP BY
  1
ORDER BY
  2;
