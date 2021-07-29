SELECT
  CONCAT(FirstName, ' ', LastName) AS "Nome completo",
  COUNT(o.OrderID) AS "Total de pedidos"
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
  ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(o.OrderID);
