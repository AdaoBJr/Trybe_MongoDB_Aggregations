-- Iniciando o projeto
# buscar_quantidade_de_empregos_por_funcionario, ao receber o email de um funcionáro, retorna a quantidade de empregos presentes em seu histórico

USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_f VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_e INT;
SELECT COUNT(*) FROM hr.employees AS employe
INNER JOIN hr.job_history AS job_h ON employe.EMPLOYEE_ID = job_h.EMPLOYEE_ID
WHERE employe.EMAIL = email_f INTO quantidade_e;
RETURN quantidade_e;
END $$
DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

-- Error Code: 1304. FUNCTION buscar_quantidade_de_empregos_por_funcionario already exists
