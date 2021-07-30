USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INTEGER READS SQL DATA
BEGIN
	DECLARE total_emprego INTEGER;
	SELECT COUNT(jh.job_id) AS 'total de empregos'
	FROM hr.job_history AS jh, hr.employees AS e
	WHERE e.EMAIL IN(email) AND e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INTO total_emprego;
  RETURN total_emprego;
END $$

DELIMITER $$ ;
