-- Iniciando o projeto
# clientes que possuem compatriotas, quantidade de compatriotas para cada cliente

SELECT customer_n.ContactName AS 'Nome',
customer_p. AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS customer_p
INNER JOIN w3schools.customers AS customer_n ON customer_p.Country = customer_n.Country
GROUP BY 2, 1
HAVING `Número de compatriotas` <> 0
ORDER BY 1 ASC;
