select
  jobs.job_title as 'Cargo',
  ROUND(AVG(employees.salary), 2) as 'Média Salarial',
  CASE
    WHEN AVG(employees.salary) BETWEEN 2000
    AND 5800 THEN 'Júnior'
    WHEN AVG(employees.salary) between 5801
    AND 7500 then 'Pleno'
    WHEN AVG(employees.salary) between 7501
    AND 10500 then 'Sênior'
    WHEN AVG(employees.salary) > 10500 THEN 'CEO'
  END AS 'SENIORIDADE'
FROM
  hr.jobs as jobs
  inner join hr.employees as employees on jobs.job_id = employees.job_id
GROUP BY
  job_title
ORDER BY
  AVG(employees.salary),
  job_title;
