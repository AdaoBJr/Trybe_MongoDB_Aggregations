/* 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00 */
SELECT
  p.ProductName `Produto`,
  MIN(o.Quantity) `Mínima`,
  MAX(o.Quantity) `Máxima`,
  ROUND(AVG(o.Quantity), 2) `Média`
FROM
  w3schools.order_details o
    INNER JOIN
  w3schools.products p
  ON o.ProductID = p.ProductID
GROUP BY
  o.ProductID
HAVING
  `Média` > 20.00
ORDER BY
  `Média`,
  `Produto`;
