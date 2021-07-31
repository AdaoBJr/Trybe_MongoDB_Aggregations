USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (func_email varchar(50))
RETURNS INT READS SQL DATA

BEGIN
declare employeesqtd int;
select count(employees.EMPLOYEE_ID) as 'total_empregos' from hr.employees as employees
inner join hr.job_history as historico
on employees.EMPLOYEE_ID = historico.EMPLOYEE_ID
where employees.EMAIL = func_email
into employeesqtd;
return employeesqtd;
END$$

DELIMITER ;
