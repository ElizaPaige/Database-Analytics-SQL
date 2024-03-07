--1. Show the category IDs and names of categories with products ([INNER] JOIN, DISTINCT) (8 records).
SELECT DISTINCT c.CategoryID, c.CategoryName
FROM Categories c 
INNER JOIN Products p ON c.CategoryID = p.CategoryID;

--2. Show the category IDs and names of categories. Include categories even if they don't have any products in them (LEFT [OUTER] JOIN, DISTINCT) (10 records).
SELECT DISTINCT c.CategoryID, c.CategoryName
FROM Categories c 
LEFT JOIN Products p ON c.CategoryID = p.CategoryID;

--3. Show the category IDs and names of categories that do not have products in them. (LEFT  [OUTER]  JOIN, WHERE IS NULL) (2 records).
SELECT c.CategoryID, c.CategoryName
FROM Categories c 
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
WHERE p.CategoryID IS NULL;

--4. Show the category IDs, names of categories, and product names for categories with products. Only include discontinued products with non-zero units in stock. Order by categories' categoryID ([INNER] JOIN)  (4 records).
SELECT c.CategoryID, c.CategoryName, p.ProductName
FROM Categories c 
INNER JOIN Products p ON c.CategoryID = p.CategoryID
WHERE p.Discontinued = 1 AND p.UnitsInStock > 0
ORDER BY c.CategoryID;





