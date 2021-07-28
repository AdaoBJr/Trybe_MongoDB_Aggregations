SELECT COUNTRY_NAME AS Pais,
IF(REGION_ID = 1, 'incluido', 'não incluído') AS 'Status Inclusão' FROM hr.countries ORDER BY COUNTRY_NAME;
