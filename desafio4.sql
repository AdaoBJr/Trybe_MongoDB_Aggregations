SELECT j.JOB_TITLE as 'Cargo', ROUND(avg(e.SALARY),2) as 'Média salarial', CASE
WHEN avg(e.SALARY) >= 2000 and avg(e.SALARY)<=5800 THEN 'Júnior'
WHEN avg(e.SALARY) > 5800 and avg(e.SALARY)<=7500 THEN 'Pleno'
WHEN avg(e.SALARY) > 7500 and avg(e.SALARY)<=10500 THEN 'Sênior'
ELSE 'CEO'
END as 'Senioridade'
FROM hr.jobs j inner join hr.employees e on j.JOB_ID = e.JOB_ID -- é onde ligo as duas tabelas
GROUP BY j.JOB_TITLE -- tem que ter, senão não aparece o resultado.
ORDER BY avg(e.SALARY) ASC, j.JOB_TITLE; -- README pede.

-- EXPLICANDO:  Tem 2 tabelas diferentes, mas ambas têm a coluna JOB_ID. PRA CADA VEZ que um JOB_ID de uma 
-- for igual ao JOB_ID da outra, eu quero que apareçam 3 colunas: O cargo relativo a este job_id, uma média
-- relativa ao salário do cargo deste JOB_ID(pra isso eu uso o GROUP BY) e uma coluna sobre SENIORIDADE.
-- SOBRE GROUP BY: Eu uso pra agrupar todos os cargos 1 vez na lista(ex: Pra evitar que apareça 17 vezes um
-- cargo de STOCK CLERK). Ao agrupar, só aparece 1X no resultado. E SÓ ASSIM DÁ CERTO. Quando agrupo os cargos
-- relativos a determinado JOB_ID, fica melhor pro mysql fazer a média do SALARY deste cargo específico.alter

-- Este requisito eu precisei de ajuda em alguns detalhes. Tive ajuda do Colega Henrique Clementino
-- Link: https://github.com/tryber/sd-010-b-mysql-vocabulary-booster/pull/40/commits/77b04a6928fa5270d19165062ce74197396b2329
