SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    h.START_DATE AS 'Data de inicio',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON h.JOB_ID = j.JOB_ID
WHERE
    MONTH(h.START_DATE) = 1
        OR MONTH(h.START_DATE) = 2
        OR MONTH(h.START_DATE) = 3
ORDER BY Nome completo , Data de inicio ASC