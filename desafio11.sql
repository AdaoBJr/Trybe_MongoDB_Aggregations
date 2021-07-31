SELECT 
ContactName as "Nome",
Country as "País",
COUNT(Country) as 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country
;
