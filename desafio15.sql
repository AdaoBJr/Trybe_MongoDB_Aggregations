USE hr; 
DELIMITER $$

CREATE procedure  buscar_media_por_cargo(IN cargo VARCHAR(180)) -- escolhi a palavra CARGO mas podia ser o nome que eu quisesse
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) as "Média salarial"  
FROM hr.jobs j
inner join hr.employees e on j.JOB_ID = e.JOB_ID
where j.JOB_TITLE = cargo;
END$$
DELIMITER ; 
-- Tive a ajuda do Colega Henrique Clementino para alguns entedimentos neste requisito.
-- Link: https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/40/commits/98916142577f6fbb4e846c3773cd7ef617d7f43e
-- A ideia é criar essa procedure e chamar ela em outro arquivo usando a profissão Programmer.
-- No parâmetro da procedure eu usei o Varchar porque vai ser alguma coisa palavra escrita(ex: Programmer)
-- Se o requisito pedisse número no parâmetro, aí usaria um "numeric".
-- Usei IN no parâmetro pq é um parâmetro de entrada.
-- utilidade do INNER JOIN aqui:  as duas tabelas tem uma coluna JOB_ID. E por esse JOB_ID, o código entende
-- que um JOB_ID(por ex: fi_account) na tab. JOBS, é na verdade um cargo de ACCOUNTANT. A partir disso,
-- o código percebe que, na tabela EMPLOYEES, o cargo de ACCOUNTANT tem o SALARY = algum valor(nem sempre é o mesmo salário)
-- e como eu usei o AVG(e.SALARY), o código vai descobrir a média de salário pra essa profissão específica.
-- utilidade do WHERE aqui: Toda a ideia que botei antes deve ser aplicada ONDE a profissão(que eu optei
-- no parâmetro da procedure chamar de CARGO) seja IGUAL ao CARGO que eu digito quando fizer a chamada da Procedure.
-- A questão pede Programmer, mas eu poderia chamar Financer Manager na hora de fazer a chamada da procedure, e a mesma ideia seria feita.
