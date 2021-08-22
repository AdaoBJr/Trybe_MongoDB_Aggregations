USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int )
RETURN INT READS SQL DATA
BEGIN
DECLARE contratados INT;
  SELECT COUNT(*)
  FROM hr.employees
  WHERE MONTH(hire_date) = mes AND YEAR(hire_date) = ano INTO contratados;
  RETURN contratados;
END $$
DELIMITER;
