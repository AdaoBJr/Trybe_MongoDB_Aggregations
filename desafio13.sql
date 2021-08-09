SELECT
  products.ProductName as 'Produto',
  products.Price as 'Preço'
from
  w3schools.products as products
  inner join w3schools.order_details as order_details on products.ProductID = order_details.ProductID
where
  order_details.Quantity > 80
ORDER BY
  1;
