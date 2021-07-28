use hr;
delimiter $$
create function buscar_quantidade_de_empregos_por_funcionario(email varchar(100))
returns int reads sql data
begin
declare quantEmpregos int;
select count(*) into quantEmpregos from hr.job_history as jh
inner join hr.employees as e on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
where e.EMAIL = email;
return quantEmpregos;
end $$
delimiter ;
