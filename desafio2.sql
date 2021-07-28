SELECT JOB_TITLE AS Cargo,
CASE
        when MAX_SALARY BETWEEN 5000 and 10000 then 'Baixo'
        when MAX_SALARY BETWEEN 10001 and 20000 then 'Médio'
        when MAX_SALARY BETWEEN 20001 and 30000 then 'Alto'
        ELSE 'Altíssimo'
    END AS Nível
 FROM hr.jobs