select JOB_TITLE as 'Cargo',  
CASE 
WHEN MAX_SALARY <= 10000 then 'Baixo'
WHEN MAX_SALARY > 10001 AND MAX_SALARY <= 20000 then 'Médio'
WHEN MAX_SALARY > 20001 AND MAX_SALARY <= 30000 then 'Alto'
WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
end as 'Nível'
from hr.JOBS order by Cargo;