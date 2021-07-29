SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    jobs.JOB_TITLE AS Cargo,
    job_history.START_DATE AS `Data de início do cargo`,
    departments.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees
        INNER JOIN
    hr.jobs ON employees.JOB_ID = jobs.JOB_ID
        INNER JOIN
    hr.job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
        INNER JOIN
    hr.departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC , Cargo ASC;
