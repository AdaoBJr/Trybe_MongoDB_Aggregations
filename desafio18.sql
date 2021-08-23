DELIMITER $$
CRIAR  FUNÇÃO  buscar_quantidade_de_empregos_por_funcionario (param varchar ( 100 ))
RETORNA INT LÊ DADOS SQL
COMEÇAR
DECLARAR quantidade INT ;
SELECT  COUNT ( jh . EMPLOYEE_ID ) FROM job_history jh INNER JOIN funcionários e ON  jh . EMPLOYEE_ID  =  e . EMPLOYEE_ID  WHERE EMAIL = param
INTO quantidade;
RETORNAR quantidade;
END $$
DELIMITER;
