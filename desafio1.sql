SELECT 
    COUNTRY_NAME AS País, 
    IF(REGION_NAME = 'Europe', 'incluído', 'não incluído') as 'Status Inclusão'
FROM
    hr.countries AS c
INNER JOIN
    hr.regions AS r
ON r.REGION_ID = c.REGION_ID
ORDER BY País;
