select 
	concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
    j.JOB_TITLE as 'Cargo',
    h.START_DATE as 'Data de início do cargo',
    d.DEPARTMENT_NAME as 'Departamento'
from employees e
inner join jobs j on e.JOB_ID = j.JOB_ID
inner join job_history h on e.EMPLOYEE_ID = h.EMPLOYEE_ID
inner join departments d on h.DEPARTMENT_ID = d.DEPARTMENT_ID
order by concat(e.FIRST_NAME, ' ', e.LAST_NAME) desc, d.DEPARTMENT_NAME desc
