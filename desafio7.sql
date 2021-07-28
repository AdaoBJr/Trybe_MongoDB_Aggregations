SELECT
    UCASE(CONCAT(employees.FIRST_NAME,
                    ' ',
                    employees.LAST_NAME)) AS 'Nome Completo',
    job_history.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    hr.employees AS employees
        INNER JOIN
    hr.job_history AS job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
    MONTH(job_history.START_DATE) = '01'
        OR MONTH(job_history.START_DATE) = '02'
        OR MONTH(job_history.START_DATE) = '03'
ORDER BY UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) , job_history.START_DATE ASC;
