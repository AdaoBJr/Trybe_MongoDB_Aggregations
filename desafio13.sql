SELECT ProductName as "Produto", Price as "Preço"  
from w3schools.products p inner join w3schools.order_details o
on p.ProductID = o.ProductID
Where o.Quantity > 80
ORDER BY ProductName ASC;

-- Por exemplo:  O produto zaanse koeken(tem o ProductID 47). Aí o inner join  faz o mysql entender que, 
-- esse produto de ID 47 é o mesmo produto( da tabela order_details) que tem o productID igual 47.
-- Então quando o código entende isso bem, basta usar a condição Where pra dizer que só quero SELECT nos
-- produtos que tem um quantity(foram pedidos) acima de 80. 
