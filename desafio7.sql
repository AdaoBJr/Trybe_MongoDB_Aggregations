SELECT  
ucase(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM employees AS e
INNER JOIN job_history AS h
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC; 
