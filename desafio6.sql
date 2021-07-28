SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Nome Completo',
    JOB_TITLE AS 'Cargo',
    start_DATE AS 'Data de início do cargo',
    DEPARTMENT_Name AS 'departamento'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON j.job_id = jh.JOB_ID
        INNER JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY 'Nome Completo' DESC , cargo;
