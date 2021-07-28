SELECT 
    countries.COUNTRY_NAME AS País,
    IF(countries.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM
    hr.countries;
