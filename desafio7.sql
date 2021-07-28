SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    job_history AS jh
        INNER JOIN
    employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        INNER JOIN
    jobs AS j ON jh.JOB_ID = j.JOB_ID
WHERE
    MONTH(START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , jh.START_DATE;
