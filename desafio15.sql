USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS "Média salarial"
FROM employees AS e, jobs AS j
WHERE j.job_title IN(cargo) AND j.job_id = e.job_id;
END $$
DELIMITER ;
