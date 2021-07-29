SELECT 
    CONCAT(table_employees.first_name,
            ' ',
            table_employees.last_name) AS 'Nome completo',
    DATE_FORMAT(table_history.start_date, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(table_history.end_date, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(table_history.end_date,
                    table_history.start_date) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS table_employees
        INNER JOIN
    hr.job_history AS table_history ON table_employees.employee_id = table_history.employee_id
ORDER BY 1 , 4;
