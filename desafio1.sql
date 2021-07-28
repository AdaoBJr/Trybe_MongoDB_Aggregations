SELECT
    Pais.COUNTRY_NAME AS 'País',
    IF(Status_Inclusao.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    countries AS País
        INNER JOIN
    regions AS Status_Inclusao ON Pais.REGION_ID = Status_Inclusao.REGION_ID
ORDER BY COUNTRY_NAME ASC;
