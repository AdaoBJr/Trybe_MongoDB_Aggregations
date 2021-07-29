-- Iniciando o projeto
# Funcionários que realizaram algum pedido, e total de pedidos feitos.

SELECT CONCAT(employe.FirstName, ' ', LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS employe
INNER JOIN w3schools.orders AS orders ON employe.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos` ASC;
