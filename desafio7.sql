Select UPPER(CONCAT(e.FIRST_NAME,' ',e.LAST_NAME)) as "Nome Completo",
jh.START_DATE as "Data de início",
e.Salary as 'Salário'
from hr.job_history as jh
INNER JOIN hr.employees as e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 
WHERE MONTH(jh.START_DATE) >= (1) and MONTH(jh.START_DATE) <= 3
ORDER BY `Nome Completo`, `Data de início`
;
