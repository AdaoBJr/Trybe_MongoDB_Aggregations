SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    CONCAT((SUBSTRING(j.START_DATE, 9, 2)), '/', (SUBSTRING(j.START_DATE, 6, 2)), '/', (SUBSTRING(j.START_DATE, 1, 4))) 'Data de início',
    CONCAT((SUBSTRING(j.END_DATE, 9, 2)), '/', (SUBSTRING(j.END_DATE, 6, 2)), '/', (SUBSTRING(j.END_DATE, 1, 4))) 'Data de rescisão',
    ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) 'Anos trabalhados'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , ROUND(DATEDIFF(j.END_DATE, j.START_DATE), 2)
