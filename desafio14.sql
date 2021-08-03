SELECT 
    Country AS 'País'
FROM
    w3schools.customers AS cust
INNER JOIN orders AS ord ON cust.CustomerID = ord.CustomerID
INNER JOIN order_details AS orDe ON ord.OrderID = orDe.OrderID
INNER JOIN products AS pro ON orDe.ProductID = pro.ProductID
INNER JOIN suppliers AS supp ON pro.SupplierID = supp.SupplierID
WHERE cust.Country <> supp.Country
ORDER BY `País`
LIMIT 5;
-- Error Code: 1052. Column 'Country' in field list is ambiguous
