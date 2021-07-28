SELECT * FROM hr.jobs;
-- job_title, min_salary and max_salary

SELECT 
JOB_TITLE as 'Cargo',
CASE 
when MAX_SALARY < 10000 then 'Baixo'
when MAX_SALARY > 10001 and MAX_SALARY < 20000 then 'Médio'
when MAX_SALARY > 20001 and MAX_SALARY < 30000 then 'Alto'
ELSE 'Altíssimo'
END AS 'Nivel'
FROM hr.jobs;
