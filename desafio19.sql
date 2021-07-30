DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN

DECLARE total_pepleos int;
SELECT 
COUNT(*) AS total
FROM
    hr.employees
WHERE month(HIRE_DATE) = mes AND year(HIRE_DATE) =  ano
into total_pepleos;
return total_pepleos;

END $$

DELIMITER ; 
