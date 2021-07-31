DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_input varchar(25))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE count_job_history INT;
  SELECT COUNT(jh.JOB_ID)
  FROM employees as e
  INNER JOIN job_history as jh
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE e.EMAIL = email_input 
  INTO count_job_history;
  RETURN count_job_history;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR")
