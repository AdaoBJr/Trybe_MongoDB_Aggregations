SELECT
  CONCAT(E.FIRSTName, ' ', E.LASTNAME) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
  ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
