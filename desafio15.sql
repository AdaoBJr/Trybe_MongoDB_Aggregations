USE hr;
DELIMITER $$

CREATE procedure buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY),2)as 'Média salarial'
FROM hr.employees as e
INNER JOIN hr.jobs as j
WHERE j.JOB_ID = e.JOB_ID and j.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
