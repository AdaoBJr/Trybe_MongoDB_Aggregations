SELECT 
	P.ProductName 'Produto',
    P.Price 'Preço'
FROM w3schools.products P
	JOIN w3schools.order_details O ON O.ProductID = P.ProductID
WHERE
	O.Quantity > 80
ORDER BY Produto;
