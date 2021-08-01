/* 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março */
SELECT
  UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) `Nome completo`,
  h.START_DATE `Data de início`,
  e.SALARY `Salário`
FROM
  (
    (
      hr.job_history h
        INNER JOIN
      hr.employees e
    ON h.EMPLOYEE_ID = e.EMPLOYEE_ID)
      INNER JOIN
    hr.jobs j
  ON h.JOB_ID = j.JOB_ID)
    INNER JOIN
  hr.departments d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE
  MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY
  `Nome completo`,
  `Data de início`;
