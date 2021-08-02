SELECT 
  ROUND(AVG(E.SALARY),2) AS 'salario',
  J.JOB_TITLE AS 'cargo'
 FROM hr.employees AS E
 INNER JOIN hr.jobs AS J 
 ON J.JOB_ID = E.JOB_ID
 WHERE J.JOB_TITLE = 'Programmer'
 GROUP BY J.JOB_TITLE;