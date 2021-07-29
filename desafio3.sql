SELECT job_title AS Cargo,
          MAX_SALARY - MIN_SALARY AS Nível
FROM jobs
ORDER BY  Nível ASC, job_title ASC;
