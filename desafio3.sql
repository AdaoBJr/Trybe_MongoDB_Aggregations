SELECT job_title as 'Cargo', (MAX_SALARY - MIN_SALARY) as 'Diferença entre salários máximo e mínimo' FROM hr.jobs order by `Diferença entre salários máximo e mínimo`, `Cargo`;
