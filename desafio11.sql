SELECT
  Country,
  COUNT(*)
FROM w3schools.customers
GROUP BY Country;
