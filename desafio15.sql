USE hr; 
DELIMITER $$

CREATE procedure  buscar_media_por_cargo(IN cargo VARCHAR(180)) -- escolhi a palavra CARGO mas podia ser o nome que eu quisesse
BEGIN
SELECT ROUND(AVG(e.SALARY),2) as "Média salarial"  
FROM hr.jobs j
inner join hr.employees e on j.JOB_ID = e.JOB_ID
where j.JOB_TITLE = cargo;
END$$
DELIMITER ; 
-- Link Henrique Clementino: https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/37/commits/74db9279ef5d93b1b12c95689a04c7084a9d0bfd
