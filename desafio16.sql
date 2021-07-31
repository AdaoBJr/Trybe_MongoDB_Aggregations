DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT
COUNT(jh.EMPLOYEE_ID)
FROM employees AS e INNER JOIN job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$
DELIMITER ;
