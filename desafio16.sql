USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qty_jobs INT;
  SELECT COUNT(*) FROM job_history AS job_h
  INNER JOIN employees AS emplo
  ON job_h.EMPLOYEE_ID = emplo.EMPLOYEE_ID
  WHERE emplo.EMAIL = email INTO qty_jobs;
  RETURN qty_jobs;
END $$
DELIMITER;
