SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS Cargo,
    his.START_DATE AS 'Data de início do cargo',
    de.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees AS em
        INNER JOIN
    job_history AS his ON em.EMPLOYEE_ID = his.EMPLOYEE_ID
        INNER JOIN
    jobs AS job ON his.JOB_ID = job.JOB_ID
        INNER JOIN
    departments AS de ON his.DEPARTMENT_ID = de.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
