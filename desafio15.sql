USE hr;
DELIMITER $$

CREATE procedure buscar_media_por_cargo (IN Cargo varchar(100))
BEGIN
SELECT round(avg(SALARY),2) as 'Média salarial'
FROM hr.employees AS employees
inner join hr.jobs as jobs
on jobs.JOB_ID = employees.JOB_ID
Where jobs.JOB_TITLE = Cargo;
END$$

DELIMITER ;
