USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant_empregos INT;
SELECT COUNT(*)
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employees
    ON job_history.employee_id = employees.employee_id
WHERE employess.email = email INTO quant_empregos;
RETURN quant_empregos;
END $$
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
DELIMITER;
