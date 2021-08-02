/* 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente */
SELECT
  c1.ContactName `Nome`,
  c1.Country `País`,
  COUNT(c1.Country) `Número de compatriotas`
FROM
  w3schools.customers c1,
  w3schools.customers c2
WHERE
  c1.CustomerID <> c2.CustomerID AND c1.Country = c2.Country
GROUP BY
  c1.ContactName, c1.Country
ORDER BY
  `Nome`;
