SELECT upper(concat(e.FIRST_NAME,' ', e.LAST_NAME)) as "Nome completo",
j.START_DATE as "Data de início",
e.SALARY as "Salário"
FROM hr.employees as e
inner Join hr.job_history as j
on j.EMPLOYEE_ID = e.EMPLOYEE_ID and month(j.START_DATE) between 1 and 3
order by `Nome completo`, `Data de início`
