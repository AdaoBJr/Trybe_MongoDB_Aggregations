USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT 
    COUNT(*)
FROM
    employees e
        INNER JOIN
    job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    EMAIL = employeeEmail
    INTO employeeEmail;
    RETURN employeeEmail;     
END $$
DELIMITER ;
