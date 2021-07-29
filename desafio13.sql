use w3school;
SELECT 
	p.ProductName as Produto,
    p.Price as Preço
FROM
    order_details od
INNER JOIN products p
ON p.ProductID = od.ProductID
WHERE od.Quantity >80
order by Produto;
