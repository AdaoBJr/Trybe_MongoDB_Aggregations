USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN
SELECT
ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM employees AS e
  INNER JOIN jobs AS j ON e.JOB_ID = j.JOB_ID AND j.JOB_TITLE = cargo;
END $$

DELIMITER $$;

CALL buscar_media_por_cargo("Programmer");
