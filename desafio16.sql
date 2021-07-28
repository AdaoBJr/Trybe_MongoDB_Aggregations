/*16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico

Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.

Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".*/
USE hr; DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25)) RETURNS INT READS SQL DATA BEGIN DECLARE total_empregos INT;

SELECT  COUNT(*)
FROM hr.job_history jh
INNER JOIN hr.employees e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email INTO total_empregos; RETURN total_empregos; END $$ DELIMITER ; 

SELECT  buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
