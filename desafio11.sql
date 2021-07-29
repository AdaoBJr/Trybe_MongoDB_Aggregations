SELECT a.ContactName as "Nome",
a.Country as "País",
count(a.Country) as "Número de compatriotas"
FROM w3schools.customers as a, w3schools.customers as b
where a.Country = b.Country and a.CustomerID <> b.CustomerID
group by a.ContactName, a.Country
order by `Nome`
