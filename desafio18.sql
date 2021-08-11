SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    CONCAT(SUBSTRING(jb.START_DATE, 9, 2),
            '/',
            SUBSTRING(jb.START_DATE, 6, 2),
            '/',
            LEFT(jb.START_DATE, 4)) AS `Data de início`,
    CONCAT(SUBSTRING(jb.END_DATE, 9, 2),
            '/',
            SUBSTRING(jb.END_DATE, 6, 2),
            '/',
            LEFT(jb.END_DATE, 4)) AS `Data de rescisão`,
    ROUND(DATEDIFF(jb.END_DATE, jb.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jb ON e.EMPLOYEE_ID = jb.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados` ASC;
