USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
  FROM employees AS e
  INNER JOIN jobs AS j
  ON j.JOB_ID = e.JOB_ID
  WHERE JOB_TITLE LIKE jobTitle;
END $$   

DELIMITER ;
