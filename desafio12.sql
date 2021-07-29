select concat(emplo.FIRST_NAME, ' ', emplo.LAST_NAME) AS 'Nome completo funcionário 1', emplo.SALARY AS 'Salário funcionário 1', emplo.PHONE_NUMBER AS 'Telefone funcionário 1', 
concat(emplo2.FIRST_NAME, ' ', emplo2.LAST_NAME) AS 'Nome completo funcionário 2', emplo2.SALARY AS 'Salário funcionário 2', emplo2.PHONE_NUMBER AS 'Telefone funcionário 2' 
from hr.employees AS emplo, hr.employees AS emplo2
where emplo.JOB_ID = emplo2.JOB_ID and emplo.EMPLOYEE_ID <> emplo2.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
