DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs_total INT;
    select
	count(*)
	from job_history jh 
	inner join employees e on jh.EMPLOYEE_ID = e.EMPLOYEE_ID
	group by e.EMAIL
	having e.EMAIL = email INTO jobs_total;
    RETURN jobs_total;
END $$
DELIMITER ;
