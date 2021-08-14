DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT
COUNT(*)
FROM
hr.employees AS e
INNER JOIN
hr.job_history AS jh
ON
e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
e.EMAIL = email
INTO
quantidade;
RETURN quantidade;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS `Quantidade de empregos`;

DROP FUNCTION buscar_quantidade_de_empregos_por_funcionario;
