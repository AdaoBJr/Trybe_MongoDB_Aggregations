SELECT COUNTRY_NAME 'País',(SELECT IF (REGION_ID = 1, 'incluído', 'não incluído')) 'Status Inclusão'  FROM countries ORDER BY `País`;
