SELECT c.country as "País"
FROM `w3schools`.`customers` as c
union
SELECT s.country as "País"
FROM `w3schools`.`suppliers` as s
ORDER BY `País`
LIMIT 5; 
