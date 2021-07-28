SELECT COUNTRY_NAME AS 'País' , IF(REGION_ID = 4, 'incluído','não incluído') AS 'Status Inclusão' FROM hr.countrie;
