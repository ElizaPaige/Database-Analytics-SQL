-- 1. From the table [Order Details] - List all details of all the above-average priced products (simple subquery) (718 records).
SELECT *
FROM [Order Details]
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM [Order Details]);


--2. From the tables [Order Details] and Orders - List any products that have appeared on an order in 1996. Use the YEAR() function. (subquery with IN) (405 records).
SELECT DISTINCT od.*
FROM [Order Details] od 
INNER JOIN Orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1996;

--3. From the tables Products and [Order Details] - List all details of products that have been sold (any date). We need this to run fast, and we don't want to see anything from the [order details] table, so use EXISTS (77 records).
SELECT p.*
FROM Products p 
WHERE EXISTS (
    SELECT 1
    FROM [Order Details] od 
    WHERE od.ProductID = p.ProductID
);
