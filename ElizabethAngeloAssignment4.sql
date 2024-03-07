--1. Show CategoryID, the minimum, average, and maximum unit price of products for each category (9 records). 
SELECT
    CategoryID,
    MIN(UnitPrice) AS MinUnitPrice,
    AVG(UnitPrice) AS AvgUnitPrice,
    MAX(UnitPrice) AS MaxUnitPrice
FROM Products
GROUP BY CategoryID;

--2.Show CategoryID and the count of products in each category. Make sure to count the primary key of the products table.  Order by the number of products descending (9 records).
SELECT
    CategoryID,
    COUNT(ProductID) AS ProductCount
FROM Products
GROUP BY CategoryID
ORDER BY ProductCount DESC;

--3. Show CategoryID and the average unit price of products for each category. Only include products packaged in boxes (have the word 'box' in the QuantityPerUnit). Order by average unit price descending (6 records). 
SELECT
    CategoryID,
    AVG(UnitPrice) AS AvgUnitPrice
FROM Products
WHERE QuantityPerUnit LIKE '%box%'
GROUP BY CategoryID
ORDER BY AvgUnitPrice DESC;

--4. Show CategoryID and the average unit price of products in each category. Only include categories with an average unit price of above $10.  Order by average unit price descending (8 records).
SELECT
    CategoryID,
    AVG(UnitPrice) AS AvgUnitPrice
FROM Products
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 10
ORDER BY AvgUnitPrice DESC;

--5. Show CategoryID and the average unit price of products in each category. Only include products packaged in boxes (have the word 'box' in the QuantityPerUnit). Only include categories with an average unit price of above $10.  Order by average unit price descending (4 records).
SELECT
    CategoryID,
    AVG(UnitPrice) AS AvgUnitPrice
FROM Products
WHERE QuantityPerUnit LIKE '%box%'
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 10
ORDER BY AvgUnitPrice DESC;

--6. Show EmployeeID and the number of orders processed by each employee —order by the count of orders descending. 
SELECT
    EmployeeID,
    COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY EmployeeID
ORDER BY OrderCount DESC;

--7. See if you can filter the results of the previous question by only including employees who processed more than 50 orders. 
SELECT
    EmployeeID,
    COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY EmployeeID
HAVING COUNT(OrderID) > 50
ORDER BY OrderCount DESC;










