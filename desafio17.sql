USE `w3schools`;
DELIMITER $$

create trigger insert_date_on_order_date
before insert on `w3schools`.`orders`
for each row
begin
set NEW.OrderDate = DATE(NOW());
end $$
DELIMITER ;
