USE hr;
DELIMITER $$

CREATE FUNCTION exibirQuantidadePessoasContratadasMesAno(mes int, ano int )
RETURNS INT READS SQL DATA
BEGIN
  DECLARE contratados INT;
  SELECT COUNT(*)
  FROM hr.employees
  WHERE MONTH(hire_date) = mes AND YEAR(hire_date) = ano INTO contratados;
  RETURN contratados;
END $$
DELIMITER ;
