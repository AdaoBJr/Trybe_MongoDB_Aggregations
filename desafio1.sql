SELECT 
    COUNTRY_NAME AS País,
    IF(region_id = 1,
        'incluido',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries;
