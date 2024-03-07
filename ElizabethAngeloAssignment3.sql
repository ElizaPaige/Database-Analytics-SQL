--WHERE statement from Products
--1. Show product ID, category ID, product name, and unit price of all products in category 3 AND cost more than $15-order by unit price (7 records)
SELECT ProductID, CategoryID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = 3 AND UnitPrice > 15
ORDER BY UnitPrice;

--2. Show product ID, category ID, product name, and unit price of all products that are in category 3 OR cost more than $15- order by unit price (57 records)
SELECT ProductID, CategoryID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = 3 OR UnitPrice > 15
ORDER BY UnitPrice;

--3. Show supplier ID, product ID, product name, and quantity per unit of all products packaged in jars (have the word 'jars' in the QuantityPerUnit). Use LIKE operator-order by supplier ID and then product ID (8 records)
SELECT SupplierID, ProductID, ProductName, QuantityPerUnit
FROM Products
WHERE QuantityPerUnit LIKE '%jars%'
ORDER BY SupplierID, ProductID;

--4. Show supplier ID, product ID, product name, unit price, and all products supplied by suppliers 12, 14, or 17. Use IN operator-order by supplier ID and then product ID (11 records).
SELECT SupplierID, ProductID, ProductName, UnitPrice
FROM Products
WHERE SupplierID IN (12, 14, 17)
ORDER BY SupplierID, ProductID;

--CASE statements
--5. List ProductID, ProductName, and a column called [Reorder Level]. We want to access the need for the urgency of reordering products. 
--The value of the reorder will be a text comment: 'no reorder' if the difference between the reorder level and the inventory in stock for product is greater than 10. 'reorder is needed' if the difference between the reorder level and the inventory in stock for a product is between 5 and 10. 'reorder immediately' for other values (the ELSE clause)
SELECT ProductID, ProductName,
    CASE
        WHEN (ReorderLevel - UnitsInStock) > 10 THEN 'no reorder'
        WHEN (ReorderLevel - UnitsInStock) BETWEEN 5 AND 10 THEN 'reorder is needed'
        ELSE 'reorder immediately'
    END AS [Reorder Level]
FROM Products;

--6. From the table Suppliers- list all suppliers' company names and a field called supplier type. We want to know whether the supplier is domestic or foreign. If the supplier is based in the USA, it is domestic. Else, it is foreign.
SELECT CompanyName,
    CASE
        WHEN Country = 'USA' THEN 'domestic'
        ELSE 'foreign'
    END AS [Supplier Type]
FROM Suppliers;




