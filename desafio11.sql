SELECT
  t1.ContactName AS Nome,
  t1.Country AS País,
  COUNT(t1.Country)
FROM w3schools.customers t1,
     w3schools.customers t2
WHERE t1.Country = t2.Country
AND t1.ContactName <> t2.ContactName
GROUP BY t1.ContactName,
         t1.Country
ORDER BY Nome;