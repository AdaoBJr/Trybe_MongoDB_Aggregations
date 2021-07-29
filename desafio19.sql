DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(use_month INT, use_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_hire INT;
SELECT
    COUNT(*) AS 'total'
FROM
    hr.employees AS e
WHERE
    MONTH(e.HIRE_DATE) = use_month
        AND YEAR(e.HIRE_DATE) = use_year INTO total_hire;
    RETURN total_hire;
END $$
DELIMITER ;
