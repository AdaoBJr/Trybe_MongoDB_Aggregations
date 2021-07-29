SELECT 
p.ProductName 'Produto', p.Price 'Preço'
FROM
products p
INNER JOIN
order_details od ON p.ProductID = od.ProductID
WHERE
od.Quantity > 80
ORDER BY `Produto`;
