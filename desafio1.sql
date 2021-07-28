SELECT
    countries.COUNTRY_NAME AS 'País',
    IF(Status_Inclusao.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries
        INNER JOIN
    regions AS Status_Inclusao ON countries.REGION_ID = Status_Inclusao.REGION_ID
ORDER BY COUNTRY_NAME ASC;
