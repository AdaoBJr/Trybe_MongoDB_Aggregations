SELECT 
    concat(FIRST_NAME, ' ',LAST_NAME ) AS 'Nome completo',
    JOB_TITLE AS Cargo,
    START_DATE AS 'Data de início do cargo',
    (SELECT DEPARTMENT_NAME FROM departments d WHERE jh.DEPARTMENT_id = d.DEPARTMENT_id) as Departamento
FROM
    job_history jh
INNER JOIN employees e
INNER JOIN jobs j
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND j.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` DESC, Cargo;