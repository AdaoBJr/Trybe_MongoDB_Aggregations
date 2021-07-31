SELECT CONCAT(d.first_name,
         ' ', d.last_name) AS 'Nome completo', j.job_title AS 'Cargo', e.start_date AS 'Data de início do cargo', g.department_name AS 'Departamento'
FROM hr.job_history e
INNER JOIN hr.jobs j
    ON e.job_id = j.job_id
INNER JOIN hr.employees d
    ON d.employee_id = e.employee_id
INNER JOIN hr.departments g
    ON g.department_id = e.department_id
GROUP BY  CONCAT(d.first_name, ' ', d.last_name) DESC, j.job_title, e.start_date, g.department_name;
