SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    departments.DEPARTMENT_NAME AS 'Departamento'
FROM
    employees e
        INNER JOIN
    job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        INNER JOIN
    jobs j ON j.JOB_ID = jh.JOB_ID
        INNER JOIN
    departments ON departments.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
