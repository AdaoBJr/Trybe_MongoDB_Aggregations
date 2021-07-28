-- Iniciando o projeto --
# Cargos com seu nível de renumeração associado, com base em seu salário máximo.

SELECT JOB_TITLE AS 'Cargo', CASE
WHEN(MAX_SALARY > 4999 AND MAX_SALARY < 10001) THEN 'Baixo'
WHEN(MAX_SALARY > 10001 AND MAX_SALARY < 20000) THEN 'Médio'
WHEN(MAX_SALARY > 20001 AND MAX_SALARY < 30000) THEN 'Alto'
ELSE 'Altíssimo' END AS 'Nível' FROM hr.jobs ORDER BY JOB_TITLE;
