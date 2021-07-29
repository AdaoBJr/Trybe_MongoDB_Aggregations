SELECT CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) AS `Nome completo`,
CONCAT(
	IF(DAY(h.START_DATE)> 9, DAY(h.START_DATE), CONCAT('0', DAY(h.START_DATE))),
	"/", 
	IF(MONTH(h.START_DATE) > 9, MONTH(h.START_DATE), CONCAT('0',MONTH(h.START_DATE))),
	"/",
	YEAR(h.START_DATE)) AS `Data de início`,
CONCAT(
	IF(DAY(h.END_DATE)> 9, DAY(h.END_DATE), CONCAT('0', DAY(h.END_DATE))),
	"/", 
	IF(MONTH(h.END_DATE) > 9, MONTH(h.END_DATE), CONCAT('0',MONTH(h.END_DATE))),
	"/",
	YEAR(h.END_DATE)) AS `Data de recisão`,
ROUND(DATEDIFF(h.END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS h
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
