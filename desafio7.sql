SELECT 
    UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
    start_DATE AS 'Data de início',
    salary AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    where month(start_date) between 1 and 3
ORDER BY `Nome Completo` , START_DATE;
