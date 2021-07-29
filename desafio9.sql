SELECT CONCAT(FirstName, ' ', LastName) AS "Nome completo", COUNT(*) AS "Total de pedidos" FROM  w3schools.orders AS o
INNER JOIN  w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(*);
