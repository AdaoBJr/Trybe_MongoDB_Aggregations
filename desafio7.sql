SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    CASE
        WHEN MONTH(jh.START_DATE) BETWEEN 1 AND 3 THEN jh.START_DATE
        ELSE 'Usuário sem acesso'
    END AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(e.first_name, ' ', e.last_name) , jh.START_DATE ASC;
