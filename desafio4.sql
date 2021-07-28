SELECT
  j.JOB_TITLE AS 'Cargo',
  ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN ROUND(AVG(emp.SALARY)) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(emp.SALARY)) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(emp.SALARY)) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN ROUND(AVG(emp.SALARY)) >= 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM hr.employees AS emp
INNER JOIN hr.jobs AS j
  ON emp.job_id = j.job_id
GROUP BY emp.job_id
order by `Média salarial`, `Cargo`;
