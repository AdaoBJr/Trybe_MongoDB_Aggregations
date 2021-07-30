SELECT  c.ContactName as 'Nome de contato', 
s.ShipperName as "Empresa que fez o envio", 
o.OrderDate as "Data do pedido" 
FROM w3schools.customers c inner join w3schools.orders o on c.CustomerID = o.CustomerID
inner join w3schools.shippers s on s.ShipperID = o.ShipperID
WHERE 
s.ShipperID IN (1,2) -- o README pede pra que as empresas que fazem o pedido sejam somente: speedy express e united package 
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
