USE hr;
DELIMITER $ $ CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_m_e_a(m INT, a INT) RETURNS INT READS SQL DATA BEGIN DECLARE total_hired INT;
SELECT
  COUNT(*)
FROM
  hr.employees
WHERE
  MONTH(HIRE_DATE) = m
  AND YEAR(HIRE_DATE) = a INTO total_hired;
RETURN total_hired;
END $ $ DELIMITER;
