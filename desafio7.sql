-- select * from hr.departments;
-- select * from hr.jobs;
-- select * from hr.employees;
-- select * from hr.job_history;
SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
WHERE
    START_DATE LIKE '%-01-%'
        OR START_DATE LIKE '%-02-%'
        OR START_DATE LIKE '%-03-%'
ORDER BY `Nome completo` , `Data de início`;

