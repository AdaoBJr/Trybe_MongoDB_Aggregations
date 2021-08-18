USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_trabalhos_funcionario INT;
SELECT
COUNT(jh.EMPLOYEE_ID)
FROM job_history AS jh
    INNER JOIN employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND e.EMAIL = email
    INTO quantidade_trabalhos_funcionario;
    RETURN quantidade_trabalhos_funcionario;
END $$

DELIMITER $$;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
