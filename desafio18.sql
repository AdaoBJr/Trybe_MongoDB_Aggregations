SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    CONCAT(DATE_FORMAT(START_DATE, '%d/%m/%Y')) AS 'Data de início',
    CONCAT(DATE_FORMAT(END_DATE, '%d/%m/%Y')) AS 'Data de rescisão',
    ROUND(((TO_DAYS(END_DATE) - TO_DAYS(START_DATE)) / 365),
            2) AS 'Anos trabalhados'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = emp.JOB_ID
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) , ROUND(((TO_DAYS(END_DATE) - TO_DAYS(START_DATE)) / 365),
        2);

-- Créditos: 
    -- formatação data: Henrique clementino
    -- cálculo de anos: https://www.w3schools.com/sql/func_mysql_to_days.asp
