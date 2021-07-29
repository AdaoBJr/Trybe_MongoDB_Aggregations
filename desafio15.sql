USE hr;
DELIMITER $$
create procedure buscar_media_por_cargo(in cargo varchar(100))
begin
select Round(avg(e.salary), 2) as 'Média salarial'
from hr.employees as e
inner join hr.jobs as j
where e.EMPLOYEE_ID = j.EMPLOYEE_ID and j.JOB_TITLE = cargo;
end $$

DELIMITER ;

Call buscar_media_por_cargo('Programmer');
