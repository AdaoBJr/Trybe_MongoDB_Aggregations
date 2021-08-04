SELECT UPPER(CONCAT(table_employees.first_name, ' ', table_employees.last_name)) AS 'Nome completo',
table_history.start_date AS 'Data de início',
table_employees.salary AS 'Salário'
FROM hr.employees AS table_employees
INNER JOIN hr.job_history AS table_history ON table_employees.employee_id = table_history.employee_id
WHERE MONTH(table_history.start_date) <= 3
ORDER BY `Nome completo` , table_history.start_date;
