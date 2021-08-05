-- select ContactName as 'Nome', Country as 'País', count(Country) - 1 as 'Compatriotas'
-- from w3schools.customers group by Country;
-- select ContactName, country from w3schools.customers;
-- Eu tive que me basiar no pr do Leandro Reis, pois tive um pouco de dificuldade com as subqueries. Você pode perceber que eu alterei algumas coisas, busquei entender e depois adaptei para uma maneira que eu achei mais lógica pra mim.
-- Link: https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/35/commits/e12685bc8d2b08f89b21b448987827022fef8adb
-- Usa-se Having como filtro para group by.
SELECT 
    ContactName AS 'Nome',
    Country AS 'País',
    (SELECT 
            COUNT(Country) - 1
        FROM
            w3schools.customers
        GROUP BY Country
        HAVING Country = País) AS 'Compatriotas'
FROM
    w3schools.customers
HAVING Compatriotas <> 0
ORDER BY ContactName;