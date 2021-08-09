SELECT
    CONCAT(employees.first_name,' ', employees.last_name) AS `Nome completo`,
    jobs.job_title AS `Cargo`,
    DATE(job_history.start_date) AS `Data de início do cargo`,
    departments.department_name AS `Departamento`
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
    ON jobs.job_id = employees.job_id
INNER JOIN hr.job_history AS job_history
    ON job_history.employee_id = employees.employee_id
INNER JOIN hr.departments AS departments
    ON departments.department_id = job_history.department_id
ORDER BY  `Nome completo` DESC, `Cargo` ASC;
