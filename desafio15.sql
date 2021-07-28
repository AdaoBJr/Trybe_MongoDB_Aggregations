/* 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo
Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo.

Sua procedure deve retornar somente 01 coluna com o alias "Média salarial", que mostra a média salarial arredondada para duas casas decimais.*/
USE hr; DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN title VARCHAR(35)) BEGIN
SELECT  ROUND(AVG(e.SALARY),2) 'Média salarial' 
       ,j.JOB_TITLE
FROM hr.employees e
INNER JOIN hr.jobs j
ON j.JOB_ID = e.JOB_ID
GROUP BY  j.JOB_TITLE;
HAVING j.JOB_TITLE = title; END $$ DELIMITER ; CALL buscar_media_por_cargo('Programmer');
