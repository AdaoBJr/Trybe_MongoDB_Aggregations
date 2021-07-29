SELECT concat(a.FIRST_NAME, ' ', a.LAST_NAME) as "Nome completo funcionário 1", 
a.SALARY as "Salário funcionário 1", 
a.PHONE_NUMBER as "Telefone funcionário 1",
concat(b.FIRST_NAME, ' ', b.LAST_NAME) as "Nome completo funcionário 2", 
b.SALARY as "Salário funcionário 2", 
b.PHONE_NUMBER as "Telefone funcionário 2"
FROM hr.employees as a, hr.employees as b
where a.JOB_ID = b.JOB_ID 
and a.EMPLOYEE_ID <> b.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`
