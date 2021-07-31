-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano

use hr;
delimiter $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int )
returns int reads sql data
begin
declare contratados int;
select count(*) into contratados from hr.employees where month(hire_date)= mes and year(hire_date) = ano;
return contratados;
end $$
delimiter ;
