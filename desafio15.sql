USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN param VARCHAR(30))
BEGIN
    SELECT ROUND(AVG(emplo.SALARY), 2) AS 'Média salarial' FROM hr.employees as emplo
    inner join hr.jobs as j on j.JOB_ID = emplo.JOB_ID
    where j.JOB_TITLE = param;
END $$

DELIMITER $$
CALL buscar_media_por_cargo('Programmer');