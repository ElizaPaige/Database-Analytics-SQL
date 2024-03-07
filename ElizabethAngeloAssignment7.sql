--1. Show a list of product names, unit prices, and ROW_NUMBER() based on unit price, ASC. Order the records by unit price descending (78 records).
SELECT
    ProductName,
    UnitPrice,
    ROW_NUMBER() OVER (ORDER BY UnitPrice DESC) AS RowNumber 
FROM Products
ORDER BY UnitPrice DESC;


--2. Do #1, but show the DENSE_RANK() based on unit price, ASC, rather than ROW_NUMBER() (78 records).
SELECT
    ProductName,
    UnitPrice,
    DENSE_RANK() OVER (ORDER BY UnitPrice DESC) AS DenseRank 
FROM Products
ORDER BY UnitPrice DESC;

--3. Show a list of product names and unit prices ranked by unit price into three categories based on price: 1, 2, 3. The highest-priced products will be marked with a 1, the second category as 2, and the last as 3. HINT: NTILE(3) over unit price, DESC (78 records). 
SELECT
    ProductName,
    UnitPrice,
    NTILE(3) OVER (ORDER BY UnitPrice DESC) AS PriceCategory
FROM Products
ORDER BY UnitPrice DESC;

--4. Show a list of product names, units in stock, and categories from categories 1, 2, 4, 5, and 7. Show their RANK() based on units in stock, ASC (46 records).
SELECT
    p.ProductName,
    p.UnitsInStock,
    p.CategoryID,
    RANK() OVER (PARTITION BY p.CategoryID ORDER BY p.UnitsInStock ASC) AS RankByStock
FROM Products p 
WHERE p.CategoryID IN (1, 2, 4, 5, 7)
ORDER BY p.CategoryID, RankByStock;

