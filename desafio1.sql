SELECT
  COUNTRY_NAME AS 'País',
  CASE
    REGION_ID
    WHEN 1 THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM
  hr.countries
ORDER BY
  COUNTRY_NAME;
