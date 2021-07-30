SELECT 
    C.COUNTRY_NAME,
    IF(C.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS C
        INNER JOIN
    hr.regions AS R ON R.REGION_ID = C.REGION_ID;
