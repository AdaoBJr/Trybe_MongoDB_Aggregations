SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS `Nome completo`,
    CASE
        WHEN MONTH(job_history.START_DATE) BETWEEN 1 AND 3 THEN job_history.START_DATE
        ELSE NULL
    END AS `Data de início`,
    SALARY AS Salário
FROM
    hr.employees
        INNER JOIN
    hr.job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
    MONTH(job_history.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC , `Data de início` ASC;
