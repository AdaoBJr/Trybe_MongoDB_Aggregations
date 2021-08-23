SELECT CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(JH.START_DATE, "%d/%m/%Y") AS `Data de início`,
DATE_FORMAT(JH.END_DATE, "%d/%m/%Y") AS `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.employees AS EMP, hr.job_history AS JH
WHERE EMP.EMPLOYEE_ID=JH.EMPLOYEE_ID AND JH.EMPLOYEE_ID<>0
ORDER BY `Nome completo`, `Anos trabalhados`;
