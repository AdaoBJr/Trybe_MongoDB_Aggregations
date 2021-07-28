SELECT COUNTRY_NAME 
'País', IF (region_id = 1, 'incluído', 'não incluído') 
'Status Inclusão' 
FROM hr.countries ORDER BY country_name ASC;
