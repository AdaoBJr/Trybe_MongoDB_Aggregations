use `hr`
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE MENSAGEM INT;
SELECT COUNT(jh.JOB_ID)
FROM `hr`.`job_history`  as jh
INNER JOIN `hr`.`employees` as e
on e.email = email
where e.employees_id = jh.employees_id
INTO MENSAGEM;
RETURN MENSAGEM;
END $$
DELIMITER ;
