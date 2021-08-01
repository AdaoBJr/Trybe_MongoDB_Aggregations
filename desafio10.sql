SELECT p.ProductName `Produto`, MIN(o.Quantity) `Mínima`, MAX(o.Quantity) `Máxima`, ROUND(AVG(o.Quantity),2) `Média` FROM products p INNER JOIN order_details o ON o.ProductID = p.ProductID GROUP BY `Produto` HAVING `Média` > 20.00 ORDER BY `Média`, `Produto`;