-- Iniciando o projeto
# Cargos com sua variação salarial e médias (max, min) mensal, considerando (max, min) como anuais

SELECT JOB_TITLE AS 'Cargo',
(jobs.MAX_SALARY, jobs.MIN_SALARY) AS 'Variação Salarial',
ROUND((jobs.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((jobs.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
