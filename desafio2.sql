SELECT JOB_TITLE as 'Cargo',
CASE 
when MAX_SALARY <= 10000 then 'Baixo'
when MAX_SALARY >= 10001 and MAX_SALARY <= 20000 then 'Médio'
when MAX_SALARY >= 20001 and MAX_SALARY <= 30000 then 'Alto'
when MAX_SALARY > 30000 then 'Altíssimo'
ELSE 'não cadastrado'
END AS 'Nivel'
FROM hr.jobs
ORDER BY JOB_TITLE;
