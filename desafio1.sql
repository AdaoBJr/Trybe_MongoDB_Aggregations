SELECT COUNTRY_NAME 'País',(SELECT IF (REGION_ID = 1, 'incluido', 'não incluido')) 'Status Inclusão'  FROM countries ORDER BY 'País';
