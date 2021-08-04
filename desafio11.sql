SELECT
  t1.ContactName,
  t1.Country,
  COUNT(t2.ContactName)
FROM
  w3schools.customers AS t1,
  w3schools.customers AS t2
WHERE
  t1.Country = t2.Country
  AND t1.ContactName <> t2.ContactName
GROUP BY
  t1.ContactName,
  t1.Country
ORDER BY
  t1.ContactName;
