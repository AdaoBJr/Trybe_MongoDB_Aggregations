use `hr`;
DELIMITER $$

create procedure buscar_media_por_cargo(in cargo varchar(70))
begin
select round(avg(e.salary), 2) as "Média salarial"
FROM `hr`.`employees` as e
inner join `hr`.`jobs` as j
on j.JOB_TITLE = cargo
where j.JOB_ID = e.JOB_ID;
end $$
DELIMITER ;
