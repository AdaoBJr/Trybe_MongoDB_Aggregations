USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobQuantity INT;
  SELECT COUNT(jh.job_id)
  FROM job_history AS jh
  INNER JOIN employees AS e
  ON e.email = employeeEmail
  WHERE e.employee_id = jh.employee_id
  INTO jobQuantity;
  RETURN jobQuantity;
END $$