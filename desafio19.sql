DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    HIRE_DATE LIKE CONCAT(ano, '-', '%', mes, '-', '%') INTO total;
    RETURN total;
END $$

DELIMITER ;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
