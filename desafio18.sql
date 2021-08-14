-- referência: https://pt.stackoverflow.com/questions/72033/converter-data-mysql-dd-mm-yyyy-para-yyyy-mm-dd

SELECT
CONCAT(FIRST_NAME,' ',LAST_NAME) AS `Nome completo`,
DATE_FORMAT(START_DATE,'%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(END_DATE,START_DATE)/365,2) AS `Anos trabalhados`
FROM
hr.job_history AS jh
INNER JOIN
hr.employees AS e
WHERE
jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY
`Nome completo`,
`Anos trabalhados`;
