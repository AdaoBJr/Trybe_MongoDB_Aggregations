DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hires_total INT;
select
count(*)
from employees
where month(HIRE_DATE) = mes and year(HIRE_DATE) = ano INTO hires_total;
RETURN hires_total;
END $$
DELIMITER ;
