select c.ContactName as "Nome", 
c.Country as "País", 
count(c.Country) as "Número de compatriotas"
FROM `w3schools`.`customers` as c,
`w3schools`.`customers` as copia
where c.Country = copia.Country
and c.CustomerID <> copia.CustomerID
group by c.ContactName, c.Country
order by Nome
