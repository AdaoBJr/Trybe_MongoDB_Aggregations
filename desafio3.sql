SELECT job_title as Cargo, (max_salary - min_salary) as 'Diferença entre Salários' FROM hr.jobs ORDER BY (max_salary - min_salary), job_title;
