SELECT COUNTRY_NAME, IF(REGION_ID = 1, 'incluído','não incluído') 
FROM hr.countries
ORDER BY COUNTRY_NAME;
