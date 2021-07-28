SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    jh.start_date AS 'Data de início do cargo',
    e.salary as 'Salário'
from hr.employees as e
inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where month(jh.start_date) in (01, 02, 03)
order by CONCAT(e.first_name, ' ', e.last_name) asc, jh.START_DATE asc;
