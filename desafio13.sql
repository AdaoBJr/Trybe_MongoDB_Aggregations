SELECT ProductName AS Produto, Price AS Preço FROM products AS p 
INNER JOIN order_details AS o ON o.ProductID = p.ProductID
WHERE Quantity > 80 ORDER BY Produto;
