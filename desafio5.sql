SELECT 
    j.JOB_TITLE AS 'Cargo',
    (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
    ROUND(j.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(j.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    jobs j
ORDER BY `Variação salarial` ASC , Cargo ASC;
