SELECT c.country_name AS 'País', IF(r.region_name = 'Europe', 'incluído', 'não incluido')
FROM hr.countries AS c
INNER JOIN hr.regions AS r ON r.region_id = c.region_id;
