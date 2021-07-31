use hr;
delimiter $$
create procedure buscar_media_por_cargo (in cargo varchar(100))
begin
select round(avg(e.salary), 2) as "Média salarial" 
from hr.employees as e
inner join hr.jobs as j on e.JOB_ID = j.JOB_ID
where j.JOB_TITLE = cargo;
end $$
delimiter ;
