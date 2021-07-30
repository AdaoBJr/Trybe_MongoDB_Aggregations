-- Consulta no repositorio de Fabio Maturano
-- https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/11
select 
concat(employeesA.FIRST_NAME,' ', employeesA.LAST_NAME) as 'Nome completo funcionário 1',
employeesA.SALARY as 'Salário funcionário 1',
employeesA.PHONE_NUMBER as 'Telefone funcionário 1', 
concat(employeesB.FIRST_NAME,' ', employeesB.LAST_NAME) as 'Nome completo funcionário 2',
employeesB.SALARY as 'Salário funcionário 2',
employeesB.PHONE_NUMBER as 'Telefone funcionário 2'
from
hr.employees as employeesA, hr.employees as employeesB
where 
concat(employeesA.FIRST_NAME,' ', employeesA.LAST_NAME) <> concat(employeesB.FIRST_NAME,' ', employeesB.LAST_NAME)
and
employeesA.JOB_ID = employeesB.JOB_ID
order by 
concat(employeesA.FIRST_NAME,' ', employeesA.LAST_NAME) ASC,
concat(employeesB.FIRST_NAME,' ', employeesB.LAST_NAME) ASC
