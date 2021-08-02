SELECT country_name AS `País`, IF (regions.region_name = 'EUROPE', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS countries
INNER JOIN hr.regions AS regions
ON countries.region_id = regions.region_id
ORDER BY `País`;