/* 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80 */
SELECT
  p.ProductName `Produto`,
  p.Price `Preço`
FROM
  w3schools.order_details o
    INNER JOIN
  w3schools.products p
  ON o.ProductID = p.ProductID
WHERE
  o.Quantity > 80
ORDER BY
  `Produto`;
