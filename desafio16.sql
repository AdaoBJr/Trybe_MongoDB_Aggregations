DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos_total INT;
SELECT COUNT(*) AS total_empregos
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.employee_id = jh.employee_id
WHERE e.email = email INTO empregos_total;
RETURN empregos_total;
END $$
