USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(35), OUT averageSalary DOUBLE)
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS "Média salarial"
FROM hr.employees e
INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = jobTitle
GROUP BY e.JOB_ID;
END $$

DELIMITER ;
