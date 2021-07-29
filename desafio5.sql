SELECT JOB_TITLE as 'Cargo',            -- melhor ficar assim quando são muitos no SELECT
(MAX_SALARY - MIN_SALARY)as 'Variação salarial',
ROUND(avg(MIN_SALARY)/12,2) as 'Média mínima mensal',
ROUND(avg(MAX_SALARY)/12,2) as 'Média máxima mensal' 
FROM hr.jobs
GROUP BY JOB_ID -- por causa da média. Tentei usar JOB_TITLE, mas não deu certo usar aqui.
order by (MAX_SALARY - MIN_SALARY) asc, JOB_TITLE; -- README pede.

-- Perceba que geralmente usa o GROUP BY quando tem que fazer médias. Então agrupa os cargos pelo ID.
-- como é média mensal, faz o avg() e divide por 12
