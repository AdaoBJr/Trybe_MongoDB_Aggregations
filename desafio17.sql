-- Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente a data atual na coluna OrderDate

use w3schools
delimiter $$
create trigger gatilho_inserir_data_atual_orderdate
before insert on w3schools.orders
for each row
begin
set new.OrderDate = now();
end $$
delimiter ;
