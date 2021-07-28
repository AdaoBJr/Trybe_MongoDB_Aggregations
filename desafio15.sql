USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN profession VARCHAR(100))
BEGIN
SELECT ROUND(AVG(emp.SALARY))AS 'Média salarial' FROM hr.employees AS emp
INNER JOIN hr.jobs AS job
ON emp.JOB_ID = job.JOB_ID
WHERE profession = JOB_TITLE
GROUP BY emp.JOB_ID;
END $$
DELIMITER ;
