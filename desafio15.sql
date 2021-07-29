USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(200))
BEGIN
SELECT 
  ROUND(AVG(e.salary), 2) AS "Média salarial"
  FROM hr.employees AS e
  INNER JOIN hr.jobs AS j
  ON j.job_title = cargo
  WHERE j.job_id = e.job_id;
END $$
DELIMITER ;
