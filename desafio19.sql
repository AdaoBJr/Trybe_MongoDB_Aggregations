DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE contratacoes INT;
SELECT COUNT(*) FROM hr.employees AS e
WHERE e.hire_date LIKE
CONCAT(ano, '-', IF(LENGTH(mes) = 1, CONCAT('_', mes), mes), '-%') INTO contratacoes;
RETURN contratacoes; 
END $$
DELIMITER ;
