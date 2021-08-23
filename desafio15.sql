USE hr;
DELIMITER $$
CRIAR PROCEDIMENTO buscar_media_por_cargo ( IN cargo VARCHAR ( 100 ))
COMEÇAR
SELECIONAR ROUND ( AVG ( E . SALÁRIO ), 2 ) ' Média salarial '  DE funcionários E INNER JOIN   empregos J ON  J . JOB_ID  =  E . JOB_ID  WHERE JOB_TITLE = carga;
END $$
DELIMITER;
