SELECT
    CONCAT(em.FIRST_NAME, " ", em.LAST_NAME) AS "Nome completo",
    DATE_FORMAT(joHi.START_DATE, "%d/%m/%Y") AS "Data de início",
    DATE_FORMAT(joHi.END_DATE, "%d/%m/%Y") AS "Data de rescisão",
    ROUND((DATEDIFF(joHi.END_DATE, joHi.START_DATE)) / 365, 2) AS "Anos trabalhados"
    -- (joHi.END_DATE - joHi.START_DATE) AS "TESTE"
FROM hr.job_history AS joHi
INNER JOIN hr.employees as em ON joHi.EMPLOYEE_ID = em.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
