-- 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo

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
