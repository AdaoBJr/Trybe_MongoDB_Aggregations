DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))

BEGIN
  SELECT 
  AVG(e.SALARY) as "Média salarial"
  FROM employees as e
  INNER JOIN jobs as j
  ON e.JOB_ID = j.JOB_ID
  WHERE j.JOB_TITLE = cargo;
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
