SELECT
  CONCAT(e.FIRST_NAME, " ", e.LAST_NAME) "Nome completo",
  CONCAT(
    IF (DAY(START_DATE) < 10, CONCAT(0, DAY(START_DATE)), DAY(START_DATE)),
    "/",
    IF (MONTH(START_DATE) < 10, CONCAT(0, MONTH(START_DATE)), MONTH(START_DATE)),
    "/",
    YEAR(START_DATE)
  ) "Data de início",
  CONCAT(
    IF (DAY(END_DATE) < 10, CONCAT(0, DAY(END_DATE)), DAY(END_DATE)),
    "/",
    IF (MONTH(END_DATE) < 10, CONCAT(0, MONTH(END_DATE)), MONTH(END_DATE)),
    "/",
    YEAR(END_DATE)
  ) "Data de rescisão",
  ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) "Anos trabalhados"
FROM hr.job_history h INNER JOIN employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos trabalhados`;
