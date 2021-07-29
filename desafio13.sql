SELECT p.ProductName AS Produto, p.Price AS Preço FROM w3schools.products p INNER JOIN order_details o ON p.ProductID = o.ProductID AND o.Quantity > 80 ORDER BY p.ProductName
