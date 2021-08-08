USE hr;
DELIMITER $ $ CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) RETURNS INT READS SQL DATA BEGIN DECLARE total_hired INT;
SELECT
  COUNT(*)
FROM
  hr.employees
WHERE
  MONTH(HIRE_DATE) = mes
  AND YEAR(HIRE_DATE) = ano INTO total_hired;
RETURN total_hired;
END $ $ DELIMITER;
