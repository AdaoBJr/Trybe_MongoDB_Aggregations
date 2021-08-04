use `hr`
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE mensagem INT;
SELECT COUNT(jh.JOB_ID)
FROM `hr`.`job_history`  as jh
INNER JOIN `hr`.`employees` as e
ON e.EMAIL = email
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INTO mensagem;
RETURN mensagem;
END $$
DELIMITER ;
