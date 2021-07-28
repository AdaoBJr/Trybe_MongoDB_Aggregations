SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.JOB_title AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON e.employee_id = jh.employee_id
        INNER JOIN
    hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
        INNER JOIN
    hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC , Cargo ASC;
