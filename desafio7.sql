SELECT CONCAT(UCASE(d.first_name),
    ' ', UCASE(d.last_name)) AS 'Nome completo', e.start_date AS 'Data de início', d.salary AS 'Salário'
FROM hr.job_history e
INNER JOIN hr.employees d
    ON d.employee_id = e.employee_id
WHERE MONTH(start_date) IN (1, 2, 3)
ORDER BY  CONCAT(d.first_name, ' ', d.last_name), e.start_date; 