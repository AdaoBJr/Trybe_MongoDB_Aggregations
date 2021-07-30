SELECT 
    CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.job_history AS jh
        LEFT JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) IN (01 , 02, 03)
ORDER BY 1 ASC , 2 ASC;
