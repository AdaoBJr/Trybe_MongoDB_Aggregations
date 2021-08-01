USE hr;
DELIMITER $ $ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300)) RETURNS INT READS SQL DATA BEGIN DECLARE jobsCount INT;
SELECT
  COUNT(*)
FROM
  hr.job_history AS t1
  INNER JOIN hr.employees AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE
  t2.EMAIL = email INTO jobsCount;
RETURN jobsCount;
END $ $ DELIMITER;  SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
