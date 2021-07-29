USE hr;
DELIMITER $$
CREATE function buscar_quantidade_de_empregos_por_funcionario(param VARCHAR(30))
returns int reads sql data
BEGIN
DECLARE contar INT;
SELECT count(*) FROM hr.employees as emplo
inner join hr.job_history as j on j.EMPLOYEE_ID = emplo.EMPLOYEE_ID
where emplo.EMAIL = param INTO contar;
return contar;
END $$
DELIMITER $$
select buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
