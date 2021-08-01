SELECT 
    COUNTRY_NAME AS País,
    CASE
        WHEN REGION_ID = 1 THEN 'incluido'
        ELSE 'não incluido'
    END AS 'Europe'
FROM
    hr.countries
ORDER BY COUNTRY_NAME ASC;
