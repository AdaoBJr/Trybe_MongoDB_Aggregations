DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE quantidadeEmpregos DOUBLE;
SELECT COUNT(joHi.EMPLOYEE_ID) AS 'total_empregos'
FROM job_history AS joHi
INNER JOIN hr.employees AS em ON joHi.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE EMAIL=email
INTO quantidadeEmpregos;
RETURN quantidadeEmpregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR")
