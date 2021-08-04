DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN role VARCHAR(80))
BEGIN
select
round(AVG(SALARY), 2) as 'Média salarial'
from employees e
inner join jobs j on e.JOB_ID = j.JOB_ID
Group by j.JOB_TITLE
having j.JOB_TITLE = role;
END $$
DELIMITER ;