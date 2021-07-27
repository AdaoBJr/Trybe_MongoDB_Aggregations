SELECT
countries.COUNTRY_NAME AS "País",
IF(regions.REGION_NAME = "Europe", "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries AS countries
INNER JOIN hr.regions AS regions
ON regions.REGION_ID = countries.REGION_ID
ORDER BY countries.COUNTRY_NAME ASC;
