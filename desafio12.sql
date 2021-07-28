SELECT DISTINCT (CONCAT(t1.first_name, ' ', t1.last_name)) AS 'Nome completo funcionário 1',
t1.SALARY AS 'Salário funcionário 1',
t1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo funcionário 2',
t2.SALARY AS 'Salário funcionário 2',
t2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM employees AS t1, employees AS t2
WHERE t1.JOB_ID = t2.JOB_ID 
AND t1.EMPLOYEE_ID <> t2.EMPLOYEE_ID  
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
