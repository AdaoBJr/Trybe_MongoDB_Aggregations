SELECT JOB_TITLE as "Cargo",
MAX_SALARY - MIN_SALARY AS "Diferença entre salários máximo e mínimo"
FROM `hr`.`jobs`
order by MAX_SALARY - MIN_SALARY ASC, Cargo Asc
