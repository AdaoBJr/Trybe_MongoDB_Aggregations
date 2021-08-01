SELECT COUNTRY_NAME AS País,
CASE
WHEN REGION_ID = 1 THEN 'incluído'
WHEN REGION_ID = 2 THEN 'não incluído'
WHEN REGION_ID = 3 THEN 'não incluído'
WHEN REGION_ID = 4 THEN 'não incluído'
END AS 'Status inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
