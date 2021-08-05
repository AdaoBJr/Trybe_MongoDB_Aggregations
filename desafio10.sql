-- select * from w3schools.products;
-- show tables from w3schools;
-- select * from w3schools.order_details;
SELECT
  ProductName AS 'Produto',
  (SELECT
  MIN(quantity)
  FROM w3schools.order_details
  WHERE productID = w3schools.products.productID
)
  AS 'Mínima',
  (SELECT
  MAX(quantity)
  FROM w3schools.order_details
  WHERE productID = w3schools.products.productID 
)
  AS 'Máxima',
  (SELECT
  ROUND(AVG(quantity), 2)
  FROM w3schools.order_details
  WHERE productID = w3schools.products.productID
)
  AS 'Média'
FROM w3schools.products
HAVING `Média` > 20.00 -- Primeiro eu use o WHERE aqui, só que não deu certo, depois testei o having e deu certo, porém não entendi o motivo disso já que o having é pra ser usado em agrupamentos, sendo que eu não usei o GROUP BY. ???
ORDER BY `Média`, `Produto`;
