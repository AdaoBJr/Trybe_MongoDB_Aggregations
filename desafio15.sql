-- use hr;
delimiter $$
create procedure buscar_media_por_cargo(
  in cargo varchar(100)
)
begin
  select round(avg(E.SALARY), 2)
  as `Média salarial`
  from hr.employees as E
  inner join hr.jobs as J on E.JOB_ID = J.JOB_ID
  where cargo = J.JOB_TITLE;
end $$
delimiter ;
CALL buscar_media_por_cargo('Programmer');
