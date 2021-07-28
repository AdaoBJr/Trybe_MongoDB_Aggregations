SELECT 
    UCASE(concat(FIRST_NAME, ' ',LAST_NAME )) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    job_history jh
INNER JOIN employees e
INNER JOIN jobs j
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND j.JOB_ID = jh.JOB_ID
WHERE(MONTH(START_DATE) BETWEEN 1 AND 3)
ORDER BY `Nome completo`, `Data de início`;
