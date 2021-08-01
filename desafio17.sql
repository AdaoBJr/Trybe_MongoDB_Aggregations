 -- use w3schools;
delimiter $$
create trigger trigger_OrderDate
  before insert on w3schools.orders
  for each row
begin
  set new.OrderDate = date(now());
  -- set new.OrderDate = CURRENT_DATE() as duas formas retorna a data;
end $$
delimiter ;

  