create procedure exibir_historico_completo_por_funcionario(in email varchar(100))
begin
select 
concat(e.first_name, ' ', e.last_name) as 'Nome completo',
d.department_name as 'Departamento',
j.job_title as 'Cargo'
from hr.employees as e
inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
inner join hr.departments as d on d.DEPARTMENT_ID = jh.DEPARTMENT_ID
inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
where e.EMAIL = email
order by d.DEPARTMENT_NAME, j.JOB_TITLE;
end $$
delimiter ;
