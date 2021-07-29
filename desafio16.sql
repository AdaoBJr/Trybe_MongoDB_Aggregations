USE hr;
DELIMITER $$
    
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) AS 'total_empregos'		
  FROM employees AS e
  INNER JOIN job_history AS h
  ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email
  INTO quantidade;
  RETURN quantidade;		
END $$
    
DELIMITER ;
