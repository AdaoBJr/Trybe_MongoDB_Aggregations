DELIMITER $$ 
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
  RETURNS INT READS SQL DATA BEGIN
    DECLARE qtd_empregos INT;
    SELECT COUNT(h.JOB_ID)
    FROM job_history h INNER JOIN employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email GROUP BY h.EMPLOYEE_ID
    INTO qtd_empregos;
    RETURN qtd_empregos;
  END $$
DELIMITER ;
