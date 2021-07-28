SELECT COUNTRY_NAME as País, IF(REGION_id = 1, "incluído", "não incluído") as 'Status Inclusão'
FROM hr.countries;
