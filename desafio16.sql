-- use hr
delimiter $$
create function buscar_quantidade_de_empregos_por_funcionario
(email varchar(100))
returns int reads sql data
begin
  declare number_jobs int;
  select count(JH.EMPLOYEE_ID) from hr.job_history as JH
  inner join hr.employees as E on JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  where E.EMAIL = email
  into number_jobs;
  return number_jobs;
end $$
delimiter ;
select buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
