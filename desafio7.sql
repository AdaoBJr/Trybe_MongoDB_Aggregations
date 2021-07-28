-- https://www.eversql.com/sql-order-of-operations-sql-query-order-of-execution/
-- Andre Menezes
select UCASE(concat(employees.FIRST_NAME,' ',employees.LAST_NAME)) as 'Nome completo', 
historico.START_DATE as 'Data de início',
employees.SALARY as 'Salário'
from hr.job_history as historico  
inner join hr.employees as employees
on employees.EMPLOYEE_ID = historico.EMPLOYEE_ID
where month(historico.START_DATE) between 1 and 3
order by `Nome Completo` ASC, `Data de início`ASC
