USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN selectedJob VARCHAR(50))
BEGIN
SELECT ROUND(AVG(emp.salary), 2) AS 'Média salarial'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jbs
ON emp.JOB_ID = jbs.JOB_ID
WHERE JOB_TITLE = selectedJob;
END 
$$

DELIMITER ;
