SELECT upper(concat(e.FIRST_NAME, " ", e.LAST_NAME))  as 'Nome completo',
j.START_DATE as "Data de início", 
e.SALARY "Salário"
FROM hr.employees e inner join hr.job_history j on e.EMPLOYEE_ID = j.EMPLOYEE_ID -- tem que ser employee_id
WHERE MONTH(j.START_DATE) between 1 and 3 -- README pede no enunciado. Essa é uma forma mais fácil de fazer
ORDER BY upper(concat(e.FIRST_NAME, " ", e.LAST_NAME)) ASC, j.START_DATE ASC;

-- Pra ficar igual o Challenge Results, tem que usar a coluna employee_id. Faz sentido: O requisito fala
-- sobre o NOME dos empregados.
