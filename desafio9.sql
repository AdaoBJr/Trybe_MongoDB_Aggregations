SELECT CustomerName AS `Nome completo`,
COUNT(O.CustomerID) AS `Total de pedidos`
FROM w3schools.customers C
INNER JOIN w3schools.orders O
ON C.CustomerID = O.CustomerID
GROUP BY O.CustomerID
ORDER BY `Total de pedidos`;
