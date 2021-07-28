SELECT COUNTRY_NAME as 'País',
IF (REGION_ID = 1 ,'incluído','não incluido') as 'Status Inclusão'
FROM hr.countries 
ORDER BY COUNTRY_NAME ASC;
