SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    his.START_DATE AS 'Data de início',
    em.SALARY AS Salário
FROM
    hr.employees AS em
        INNER JOIN
    job_history AS his ON em.EMPLOYEE_ID = his.EMPLOYEE_ID
WHERE
    MONTH(his.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` , `Data de início`;
