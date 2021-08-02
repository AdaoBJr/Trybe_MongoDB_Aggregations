SELECT c.Country from (SELECT Country FROM w3schools.suppliers union SELECT Country FROM w3schools.customers) as c order by c.Country limit 5;
