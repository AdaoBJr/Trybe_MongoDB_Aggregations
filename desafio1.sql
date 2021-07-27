SELECT country.COUNTRY_NAME AS País,
CASE
WHEN region.REGION_NAME = 'Europe' THEN 'incluído'
ELSE 'não incluído'
END AS 'Status Inclusão'
FROM hr.countries AS country
INNER JOIN hr.regions AS region
ON country.REGION_ID = region.REGION_ID;
