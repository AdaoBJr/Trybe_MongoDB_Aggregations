SELECT 
    UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    employees e
        INNER JOIN
    job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) BETWEEN 00 AND 03
ORDER BY `Nome completo` ASC , `Data de início` ASC;
