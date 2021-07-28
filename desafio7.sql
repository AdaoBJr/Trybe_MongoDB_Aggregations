select
    UCASE(concat(e.FIRST_NAME, ' ', e.LAST_NAME)) as 'Nome completo',
    h.START_DATE as 'Data de início',
    e.SALARY as 'Salário'
from job_history h
inner join employees e on h.EMPLOYEE_ID = e.EMPLOYEE_ID
where month(h.START_DATE) in (01, 02, 03)
order by concat(e.FIRST_NAME, ' ', e.LAST_NAME), h.START_DATE
