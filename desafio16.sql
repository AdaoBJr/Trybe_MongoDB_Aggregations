USE hr;


DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobs_total INT;
	SELECT COUNT(JH.EMPLOYEE_ID)
	from hr.job_history as JH
	inner join hr.employees as E on JH.EMPLOYEE_ID = E.EMPLOYEE_ID
	where E.EMAIL = employee_email INTO jobs_total;
    RETURN jobs_total;
END $$
DELIMITER ;
