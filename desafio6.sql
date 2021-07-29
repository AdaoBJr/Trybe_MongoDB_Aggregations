SELECT concat(e.FIRST_NAME, " ", e.LAST_NAME) as 'Nome completo', 
j.JOB_TITLE as 'Cargo', 
x.START_DATE as "Data de início do cargo", 
d.DEPARTMENT_NAME as 'Departamento'
FROM hr.employees e inner join hr.jobs j  on e.JOB_ID = j.JOB_ID       -- JOB_ID é a coluna em comum entre essas 2 tabelas
inner join hr.job_history x inner join hr.departments d on x.DEPARTMENT_ID = d.DEPARTMENT_ID -- DEPARTMENT_ID é a coluna em comum entre essas 2 tabelas
ORDER BY concat(e.FIRST_NAME, " ", e.LAST_NAME) DESC, j.JOB_TITLE ASC;

-- Inner join com mais de 2 tabelas é assim: Escolhe 2 tabelas por vez pra fazer o inner join e depois usa o ON na coluna em comum.
-- Aí depois vai fazendo inner join + ON até abranger todas as tabelas usadas.
-- Se o núm. de tabelas for ímpar, é praticamente a mesma ideia do que se for número par de tabelas.

-- Usei este Link pra me lembrar como uso o CONCAT no mysql:     https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_func_mysql_concat2
