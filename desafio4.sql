-- Iniciando o projeto
# média salarial e o nível de senioridade das pessoas empregadas, agrupadas pelo cargo
 
SELECT jobs.JOB_TITLE AS 'CARGO', ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs
INNER JOIN hr.employees
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(employees.SALARY), 2) ASC, JOB_TITLE ASC;
