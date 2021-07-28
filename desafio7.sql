SELECT  
ucase(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome Completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM employees AS e
INNER JOIN job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE month(h.start_date) IN(1, 2, 3)
ORDER BY `Nome Completo`, `Data de início`; 
