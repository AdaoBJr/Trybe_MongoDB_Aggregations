SELECT
    UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    h.START_DATE AS 'Data de início',
    e.SALARY AS Salário
FROM
    hr.employees e
        INNER JOIN
    job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        AND ((h.START_DATE LIKE '%-01-%')
        OR (h.START_DATE LIKE '%-02-%')
        OR (h.START_DATE LIKE '%-03-%'))
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , h.START_DATE;
