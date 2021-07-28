SELECT 
    ContactName as Nome,
    Country as País,
    (select COUNT(*)-1 from customers c2 where c1.Country = c2.Country) as 'Número de compatriotas'
FROM
    customers c1
where (select COUNT(*)-1 from customers c2 where c1.Country = c2.Country) > 0
order by ContactName;
