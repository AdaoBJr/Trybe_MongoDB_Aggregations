SELECT 
    j.JOB_TITLE AS Cargo
FROM
    employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID;
