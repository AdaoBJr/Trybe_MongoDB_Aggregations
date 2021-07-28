SELECT COUNTRY_NAME AS 'País', 
REGION_ID, IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries
ORDER BY COUNTRY_NAME;
